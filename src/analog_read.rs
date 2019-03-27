//! The RTFM framework
//!
//! What it covers:
//! - Priority based scheduling
//! - Message passing

#![no_main]
#![no_std]

extern crate panic_halt;

use cortex_m::{asm, iprintln};

extern crate stm32f4xx_hal as hal;
use crate::hal::prelude::*;
use crate::hal::serial::{config::Config, Event, Rx, Serial, Tx};
use crate::hal::stm32::ADC1;
use hal::stm32::ITM;

use nb::block;
// use rtfm::{app, Instant};
use rtfm::app;

// Our error type
#[derive(Debug)]
pub enum Error {
    RingBufferOverflow,
    UsartSendOverflow,
    UsartReceiveOverflow,
    ADCError,
}

// const PERIOD: u32 = 8_000_000;

#[app(device = hal::stm32)]
const APP: () = {
    // Late resources
    static mut TX: Tx<hal::stm32::USART2> = ();
    static mut RX: Rx<hal::stm32::USART2> = ();
    static mut ITM: ITM = ();
    static mut ADC: ADC1 = ();

    // init runs in an interrupt free section>
    // #[init(schedule = [adc_c])]
    #[init]
    fn init() {
        let stim = &mut core.ITM.stim[0];
        iprintln!(stim, "analog read");

        let rcc = device.RCC;
        // Enable ADC clock
        rcc.apb2enr.modify(|_, w| w.adc1en().enabled());
        
        // Clocks configuration (16 MHz)
        let clocks = rcc.constrain().cfgr.freeze();

        let gpioa = device.GPIOA.split();
        gpioa.pa1.into_analog();        // PA1 for analog input      

        // Configure ADC
        let adc = device.ADC1;

        // Turn off the adc
        adc.cr2.modify(|_, w| w.adon().disabled());
        
        adc.cr2.modify(|_, w| w
            .align().right()            // Right alignment
            .cont().continuous()        // Continuous mode
        );
        // Higher precision
        adc.smpr2.modify(|_, w| w.smpx_x().cycles480());
        // Enable the interrupt when a conversion finish
        adc.cr1.modify(|_, w| w.eocie().enabled());
        // First read from analog 1
        unsafe{adc.sqr3.modify(|_, w| w.sq1().bits(0b0001));}
        // Turn on the adc
        adc.cr2.modify(|_, w| w.adon().enabled() );

        adc.cr2.modify(|_, w| w
            .swstart().start()    // Start the conversion
        );

        let tx = gpioa.pa2.into_alternate_af7();
        let rx = gpioa.pa3.into_alternate_af7(); // try comment out
        let mut serial = Serial::usart2(
            device.USART2,
            (tx, rx),
            Config::default().baudrate(115_200.bps()),
            clocks,
        )
        .unwrap();
        // generate interrupt on Rxne
        serial.listen(Event::Rxne);
        // Separate out the sender and receiver of the serial port
        let (tx, rx) = serial.split();

        // Our split serial
        TX = tx;
        RX = rx;

        // For debugging
        ITM = core.ITM;

        ADC = adc;   
    }

    // idle may be interrupted by other interrupt/tasks in the system
    #[idle]
    fn idle() -> ! {
        loop {
            asm::wfi();
        }
    }

    #[task(priority = 1, resources = [ITM])]
    fn trace_data(byte: u8) {
        let stim = &mut resources.ITM.stim[0];
        iprintln!(stim, "data {}", byte);
        // for _ in 0..10000 {
        //     asm::nop();
        // }
    }

    #[task(priority = 1, resources = [ITM])]
    fn trace_error(error: Error) {
        let stim = &mut resources.ITM.stim[0];
        iprintln!(stim, "{:?}", error);
    }

    #[task(priority = 2, resources = [TX], spawn = [trace_error])]
    fn echo(byte: u8) {
        let tx = resources.TX;

        if block!(tx.write(byte)).is_err() {
            let _ = spawn.trace_error(Error::UsartSendOverflow);
        }

    }

    #[interrupt(priority = 3, resources = [ADC], spawn = [echo])]
    fn ADC() {
        let value = resources.ADC.dr.read().bits();
        asm::nop();
        // loop {
        //     adc.cr2.modify(|_, w| w
        //         .swstart().start()    // Start the conversion
        //     );
        //     while adc.sr.read().eoc().bit_is_clear() {}
        //     let value = adc.dr.read().bits();
        //     adc.sr.modify(|_, w| w.eoc().clear_bit());
        //     iprintln!(stim, "val: {:?}", value);
        //     for _ in 0..10000 {
        //         cortex_m::asm::nop();
        //     }
        // }
    }

    // #[interrupt(priority = 3, resources = [RX], spawn = [trace_data, trace_error, echo])]
    // fn USART2() {
    //     let rx = resources.RX;

    //     match rx.read() {
    //         Ok(byte) => {
    //             let _ = spawn.echo(byte);
    //             if spawn.trace_data(byte).is_err() {
    //                 let _ = spawn.trace_error(Error::RingBufferOverflow);
    //             }
    //         }
    //         Err(_err) => {
    //             let _ = spawn.trace_error(Error::UsartReceiveOverflow);
    //         }
    //     }
    // }

    // Set of interrupt vectors, free to use for RTFM tasks
    // 1 per priority level suffices
    extern "C" {
        fn EXTI0();
        fn EXTI1();
    }
};
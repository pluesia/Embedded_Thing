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
use rtfm::app;

// Our error type
#[derive(Debug)]
pub enum Error {
    RingBufferOverflow,
    UsartSendOverflow,
    UsartReceiveOverflow,
    ADCError,
}

// Struct for writting the led matrix
struct LedMatrix 
{
    // data : &'a hal::gpio::gpioc::PC6,
    // shift : &'a hal::gpio::gpioc::PC7,
    // store : &'a hal::gpio::gpioc::PC8,
    // outputenable : &'a hal::gpio::gpioc::PC9,
    // matrix : &'a [u8; 8],
}

impl LedMatrix {
    fn show(&self) {
    }
}

#[app(device = hal::stm32)]
const APP: () = {
    // Late resources
    static mut TX: Tx<hal::stm32::USART2> = ();
    static mut RX: Rx<hal::stm32::USART2> = ();
    static mut ITM: ITM = ();
    static mut ADC: ADC1 = ();

    // init runs in an interrupt free section>
    #[init]
    fn init() {
        let stim = &mut core.ITM.stim[0];
        iprintln!(stim, "analog read");

        let rcc = device.RCC.constrain();

        //let clocks = rcc.cfgr.sysclk(84.mhz()).pclk1(42.mhz()).pclk2(84.mhz()).freeze();
        let clocks = rcc.cfgr.freeze();

        let gpioc = device.GPIOC.split();
        let pc9 = gpioc.pc9.into_alternate_af0();
        pc9.set_speed(hal::gpio::Speed::VeryHigh);

        let gpioa = device.GPIOA.split();
        let _pa1 = gpioa.pa1.into_analog();

        let gpiob = device.GPIOB.split();
        let _pb0 = gpiob.pb0.into_analog();

        // Configure ADC
        let mut adc = device.ADC1;
        unsafe {
            adc.cr2.write(|w| w
                .adon().enabled());     // Turn on the ADC                                        
            adc.cr1.write(|w| w
                //.awdch().bits(0b0001)   // Set channel IN1 enable (PA1 pin)
                .awdch().bits(0b1000)   // Set channel IN1 enable (PB0 pin)
                .eocie().enabled()      // Interrupts at the end of conversion
                .res().eight_bit());    // Set resolution
            adc.sqr1.write(|w| w
                .l().bits(1u8));        // Only one conversion
            adc.sqr3.write(|w| w
                //.sq1().bits(0b0001));   // Set the first conversion from PA1
                .sq1().bits(0b1000));   // Set the first conversion from PB0
            adc.cr2.write(|w| w
                .eocs().each_sequence() // End of conversion each secuence
                .cont().continuous()    // Continuous mode
                .swstart().start());    // Start converting
        }        

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
        // let gpioc = device.GPIOC.split();
        // let data = gpioc.pc6.into_push_pull_output();
        // let shift = gpioc.pc7.into_push_pull_output();
        // let store = gpioc.pc8.into_push_pull_output();
        // let outputenable = gpioc.pc9.into_push_pull_output();
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

    #[interrupt(priority = 3, resources = [ADC], spawn = [trace_data, trace_error, echo])]
    fn ADC() {
        let byte = resources.ADC.dr.read().bits() as u8;
        let _ = spawn.echo(byte);
        
        if spawn.trace_data(byte).is_err() {
            let _ = spawn.trace_error(Error::ADCError);
        }
    }

    #[interrupt(priority = 3, resources = [RX], spawn = [trace_data, trace_error, echo])]
    fn USART2() {
        let rx = resources.RX;

        match rx.read() {
            Ok(byte) => {
                let _ = spawn.echo(byte);
                if spawn.trace_data(byte).is_err() {
                    let _ = spawn.trace_error(Error::RingBufferOverflow);
                }
            }
            Err(_err) => {
                let _ = spawn.trace_error(Error::UsartReceiveOverflow);
            }
        }
    }

    // Set of interrupt vectors, free to use for RTFM tasks
    // 1 per priority level suffices
    extern "C" {
        fn EXTI0();
        fn EXTI1();
    }
};
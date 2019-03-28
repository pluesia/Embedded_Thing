// #![deny(unsafe_code)]
// #![deny(warnings)]
#![no_main]
#![no_std]

extern crate panic_halt;
extern crate stm32f4xx_hal as hal;

use crate::hal::prelude::*;

use cortex_m::{asm, iprintln};
use rtfm::app;

#[app(device = hal::stm32)]
const APP: () = {

    // Initialize the timer
    #[init]
    fn init() {
        let rcc = device.RCC;

        let stim = &mut core.ITM.stim[0];
        iprintln!(stim, "pwm");

        rcc.apb2enr.write(|w| w.tim1en().enabled());

        let tim1 = device.TIM1;

        let gpioa = device.GPIOA.split();

        gpioa.pa8.into_alternate_af1();
        gpioa.pa7.into_alternate_af1(); 

        // Output compare mode
        tim1.ccmr1_output.write(|w| w.oc1pe().set_bit() );
        // PWM mode
        unsafe{ tim1.ccmr1_output.write(|w| w.oc1m().bits(0b110)) };
        // Upcounting
        tim1.cr1.write(|w| w.dir().clear_bit());

        // Enable all OC and OCN
        tim1.bdtr.write(|w| w
            .moe().set_bit()
            .ossr().set_bit()        
        );
        tim1.ccer.write(|w| w
            .cc1ne().set_bit()      // OC1N signal is output
            .cc1e().set_bit()       // OC1 signal is output
        );

        // Enable the interrupt on co1
        tim1.dier.modify(|_, w| w.cc1ie().set_bit());       
        
        unsafe{     // Prescale, counter, reload value, duty cycle
            // Setting the prescaler value
            tim1.psc.write(|w| w.psc().bits(0x0));
            // Setting the capture/compare register 1
            tim1.ccr1.write(|w| w.ccr1().bits(0x4000));
            // Setting the auto-reload register
            tim1.arr.write(|w| w.arr().bits(0xFFFF));
            // Setting the counter value
            tim1.cnt.write(|w| w.cnt().bits(0x0) )  
        }; 

        tim1.cr1.write(|w| w.cen().set_bit());      // Counting start

        // tim1.cr1.write(|w| w.arpe().set_bit());  // DO NOT USE THIS
        tim1.egr.write(|w| w.ug().update() );   
    }

    #[idle]
    fn idle() -> ! {
        loop{
            asm::wfi();
        }
    }

    #[interrupt]
    fn EXTI0() {
    }

    #[interrupt]
    fn USART2() {}

    #[interrupt(priority = 3)]
    fn TIM1_CC() {
        asm::nop();      
    }
};

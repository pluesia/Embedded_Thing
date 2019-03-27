// #![deny(unsafe_code)]
// #![deny(warnings)]
#![no_main]
#![no_std]

extern crate panic_halt;
extern crate stm32f4xx_hal as hal;


use crate::hal::serial::{config::Config, Rx, Serial, Tx};
use crate::hal::prelude::*;

use stm32f4xx_hal::gpio::gpioa::PA5;
use stm32f4xx_hal::gpio::AF1;
use stm32f4xx_hal::gpio::Alternate;

use hal::stm32::{ITM, TIM1, DWT};
use cortex_m::{asm, iprintln};
use rtfm::app;
use nb::block;

#[app(device = hal::stm32)]
const APP: () = {

    // static mut LED:hal::gpio::gpioa::PA5<hal::gpio::Output<hal::gpio::PushPull>> = ();
    // static mut TIM1 : TIM1 = ();
    // static mut RCC: hal::smt32::RCC = ();

    
    //static mut GPIOA : GPIOA = ();
    //static mut GPIO : GPIO = ();
    // init runs in an interrupt free section

    // static mut TX: Tx<USART2> = ();
    // static mut ITM: ITM = ();


    // Initialize the timer
    #[init]
    fn init() {
        let rcc = device.RCC;

        let stim = &mut core.ITM.stim[0];
        iprintln!(stim, "pwm");

        rcc.apb2enr.write(|w| w.tim1en().enabled());

        let tim1 = device.TIM1;

        let gpioa = device.GPIOA.split();

        let tx = gpioa.pa5.into_alternate_af5();

        tim1.cr1.write(|w| w.cen().set_bit());


        // Setting the prescaler value
        unsafe{ tim1.psc.write(|w| w.psc().bits(79)) };

        // Setting the capture/compare register 1
        unsafe{ tim1.ccr1.write(|w| w.ccr1().bits(0x0100))};

        // Setting the auto-reload register
        unsafe{ tim1.arr.write(|w| w.arr().bits(0x1111)) };

        // Setting counting mode to uppcounting mode 0 to value
        unsafe {tim1.cr1.write(|w| w.urs().set_bit() ) };
        unsafe {tim1.cr1.write(|w| w.arpe().enabled() ) };
        unsafe {tim1.cr1.write(|w| w.cen().enabled() ) };

        // Setting the counter value
        unsafe{ tim1.cnt.write(|w| w.cnt().bits(0x0000) ) };    
        // Output compare mode 1 enabled, enabled PWM
        unsafe{ tim1.ccmr1_output.write(|w| w.oc1m().bits(0b110) ) };

        unsafe{ tim1.ccmr1_output.write(|w| w.oc1pe().set_bit() ) };

        unsafe{ tim1.ccer.write(|w| w.cc1np().set_bit() ) };

        //unsafe{ tim1.ccer.write(|w| w..enabled() };
        
        unsafe{ tim1.egr.write(|w| w.ug().update() ) };

        // RCC = rcc;
        // TIM1 = tim1;  
        // LED = led;
        // TX = tx;
        // ITM = core.ITM;

    }

    // #[idle(resources = [TX, ITM])]
    #[idle]
    fn idle() -> ! {
        // let tx = resources.TX;
        // let stim = &mut resources.ITM.stim[0];
        loop{}
    }

    #[interrupt]
    fn EXTI0() {
    }

    #[interrupt]
    fn USART2() {}

    #[interrupt()]
    fn TIM1_CC() {
        asm::nop()
    }
};

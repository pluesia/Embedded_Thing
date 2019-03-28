# Audio Spectrometre

# Introduction
This project belongs to the course Embedded System Design (E7020R) of the 
LTU.\n
The repository contains all hardware blueprints, and the sources for building
a Spectometre with a STM32F4 microcontroller. The language used have been cargo.
The main purpose is to show all the sound frecuencies of a song in real time.
The audio input is given with a 3,5mm jack, and the output is shown in a 
LED 8x8 matrix, displaying the intensity of each band of frecuency.

# Authors
William Lindell (linwil-5@student.ltu.se)\n
Pablo Luesia (pablue-8@student.ltu.se)\n

# Build
It is neccesary to have stlink, openocd and cargo installed.
For building the code, it is necesary to go inside the cloned
folder, and execute:
cargo build --bin mini_audio_spectrum --features "hal rtfm" \n

The debug output can be done with ITM

# Work done
The hardware design.\n
Real board mount. \n
Implemented in the code: \n
PWM working with the TIM1 of the STM32F4\n
ADC conversion working with interrupts\n
UART for showing the results for depuration\n

# Remaining work
Connect the features implemented to has a real system working.\n
Program the PCB with the binaries generated.\n
 
# Grades
Grade 3
Sampling and show a simple interpretation of the audio signal.\n
Grade 4
Understand and implement the fourier transform algorithm for the audio input.\n
Grade 5
Add different modes of the display and the audio.\n
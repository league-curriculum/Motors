---
title: motors-clinic
created: 2026-03-13T19:46:19Z
approved: true
---

# Motors Clinic — Course Outline

## Module 1: Getting Started
### 01 Kit Contents
- Materials list and equipment inventory
- Micro:bit box contents (microcontroller, USB cables, battery case)
- Motor kit contents (breakout board, breadboard, stepper driver, motors, servo, H-Bridge, wires)
- Shared equipment (digital oscilloscopes)

### 02 Micro:bit Setup
- Creating a MakeCode account
- Using Chrome/Chromium browser
- Importing first program (flashing-heart) from GitHub
- Downloading program to device
- Verifying successful setup

## Module 2: Signals and Power
### 01 Voltage and PWM
- Signals as electrical impulses
- Morse code analogy
- Power connections: positive, negative, ground
- Breakout board pin layout (signal, power, voltage jumper)
- Analog write block and PWM output
- Duty cycle concept (0% to 100%)

### 02 Oscilloscope
- Connecting oscilloscope to breakout board
- Reading voltage (0V to 3.3V)
- Visualizing square wave signals
- Measuring duty cycle
- Variable duty cycle program with loop

## Module 3: Brushed Motors
### 01 H-Bridge Wiring
- How brushed DC motors work (magnetic field, continuous rotation)
- Why motors need a driver (power exceeds pin capacity)
- H-Bridge circuit explained (4 switches in H pattern)
- Wiring: INT1/INT2 to P0/P1, ground, Vcc, motor leads
- Safety: connect Vcc last, disconnect first; unplug USB during wiring
- Embedded video: brushed motor mechanics

### 02 Speed and Direction
- Button control program: A=forward, B=backward, logo=stop
- Forward: INT1 ON, INT2 OFF; Backward: INT1 OFF, INT2 ON
- Speed control with analog write (variable PWM)
- Speed ramp program with A/B buttons
- Challenge: combine speed and direction control

## Module 4: Hobby Servos
### 01 Servo Wiring
- Servo architecture: motor + gears + position sensor + circuitry
- 180-degree range of motion
- Three-wire connection directly to Pin 0
- Wire colors: brown=ground, orange=signal
- Embedded video: servo teardown

### 02 Sweep Programs
- Installing MakeCode servo extension
- Basic sweep program (0 to 180 degrees)
- Challenge: make servo sweep faster
- Challenge: A/B button control for servo position

## Module 5: Steppers
### 01 Stepper Wiring
- Stepper motor operation: pulsed signals, discrete steps
- 200 pulses per rotation, 1:10 gearbox = 2000 pulses per shaft rotation
- Motor model: 28BYJ-48
- Wiring: motor to driver via white plug, breakout pins 13-16 to IN1-IN4
- Power: Pin 0 black to 5-12V negative, Pin 0 red to 5-12V positive

### 02 Coil Sequencing
- Installing stepper MakeCode extension
- Basic program: shaft moves back and forth
- LED pattern on driver board shows coil activation
- Four-step coil pattern: coils 1 and 2, 2 and 3, 3 and 4, 4 and 1
- Adjusting delay between steps to visualize pattern
- Embedded videos: stepper internals, stepper explanation

## Module 6: Wrap-up
### 01 Motor Comparison
- Side-by-side comparison chart: brushed vs servo vs stepper
- When to use each type (continuous rotation, positioning, precision)
- Real-world applications of each motor type

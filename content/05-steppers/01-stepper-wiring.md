---
title: "Stepper Wiring"
uid: Neu8YQcc
weight: 10
---

{{< instructor-guide >}}

**Objectives:**
- Explain how a stepper motor differs from a brushed DC motor or servo
- Identify the 28BYJ-48 stepper motor and ULN2003 driver board components
- Wire the stepper motor, driver board, and Micro:bit breakout correctly

**Materials:**
- 1 Micro:bit with USB cable
- 1 Micro:bit breakout board
- 1 28BYJ-48 stepper motor
- 1 ULN2003 driver board
- 4 jumper wires (signal: yellow or any color)
- 2 jumper wires (power: red/white and black)

**Timing:**
- 0:00 - 0:05 — Introduce stepper motors: what they are and why they are different (discrete steps, high precision)
- 0:05 - 0:10 — Show the 28BYJ-48 motor and ULN2003 driver board; point out the white connector, signal pins (IN1-IN4), and power terminals
- 0:10 - 0:25 — Students wire the circuit following the diagram: signal pins 13-16 to IN1-IN4, motor plug to driver socket, power from Pin 0

**Key Concepts:**
- Stepper motors move in discrete steps (typically 1/200 of a rotation per pulse)
- The 28BYJ-48 has a built-in 1:10 gearbox, requiring about 2,000 pulses per full shaft rotation
- A driver board (ULN2003) is needed because the Micro:bit cannot supply enough current to drive the motor coils directly
- Power for the motor comes from the breakout board, not directly from the Micro:bit

**Common Mistakes:**
- Plugging the stepper motor connector in the wrong orientation (it should only fit one way, but students may force it)
- Swapping IN1-IN4 pin order, which causes the motor to vibrate instead of rotate
- Connecting power wires backwards (positive to negative terminal)
- Forgetting to connect the power wires entirely — the motor will not move without external power

**Assessment Cues:**
- Student can point to each connection and explain what it does
- Student can trace the signal path from Micro:bit pin through breakout to driver board to motor
- Wiring matches the reference diagram before powering on

**Differentiation:**
- Struggling: Provide a pre-labeled wiring checklist; have them check off each connection. Pair with a partner who has completed wiring.
- Advanced: Ask them to predict what would happen if the IN1-IN4 wires were connected in reverse order, then test it.

{{< /instructor-guide >}}

## How Stepper Motors Work

Stepper motors are an unusual sort of motor. They take a special pulsed signal
and for each pulse, they move one **step**, which is usually 1/200 of a rotation.
You have to send 200 pulses to move the motor around once. This allows for very
accurate positioning.

Our stepper motor is a very small one, and it also has a 1:10 gearbox, which
means that we need to send 2,000 pulses for the shaft to move one full rotation.

{{< callout type="tip" >}}
Stepper motors are used in 3D printers, CNC machines, and other devices that need precise positioning. Unlike brushed DC motors, you can control exactly how far a stepper turns.
{{< /callout >}}

## Wiring the Circuit

Connect the stepper motor and stepper driver board like this:

![Stepper driver connections](../images/stepper-connections.png)

Connect the Micro:bit breakout to the stepper driver:

- **Pin 13** (yellow) to **IN1**
- **Pin 14** (yellow) to **IN2**
- **Pin 15** (yellow) to **IN3**
- **Pin 16** (yellow) to **IN4**

Connect the white plug of the stepper motor to the white socket on the stepper driver.

Connect the stepper driver to power. For the power connection, you can use any of the red and black pins, but we will use Pin 0:

- **Pin 0 black** to black wire to **"5-12V -"** on the driver board
- **Pin 0 red** to white wire to **"5-12V +"** on the driver board

{{< callout type="tip" >}}
Remember that the positive power is marked with a **+** and is usually red, but we will have a white wire for positive. The negative is marked with a **-** and is usually black. In our circuits, the negative is always also connected to ground.
{{< /callout >}}

### Wiring Checklist

Before powering on, verify:

1. Signal wires go to the correct IN1-IN4 pins in order (13, 14, 15, 16)
2. The stepper motor plug is fully seated in the driver board socket
3. Power wires are connected with correct polarity (+ and -)
4. No loose connections

### Challenge

If you finish early, trace each wire in your circuit and draw a simple diagram showing the signal path from the Micro:bit to the motor. Label each connection point.

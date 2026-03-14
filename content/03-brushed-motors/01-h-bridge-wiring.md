---
uid: 92LMnAVX
title: "H-Bridge Wiring"
weight: 10
---

{{< instructor-guide >}}

**Objectives:**
- Students will explain how an H-Bridge circuit controls motor direction by switching current flow
- Students will correctly wire an H-Bridge driver board to a Micro:bit breakout board
- Students will follow the safe power-up and power-down sequence for the H-Bridge

**Materials:**
- 1 Micro:bit with USB cable per student
- 1 breakout board per student
- 1 L9110 H-Bridge driver board per student
- 1 small brushed DC motor per student
- 4 Dupont wires per student (male-to-male or male-to-female as needed)
- Breadboard for making connections (optional)
- Battery pack with USB cable

**Timing:**
- 0-5 min: Introduce brushed motors and show physical motor
- 5-10 min: Explain H-Bridge circuit diagram and how switch pairs control direction
- 10-15 min: Walk through wiring connections step by step; emphasize safety rules
- 15-25 min: Students wire their H-Bridge boards
- 25-30 min: Verify all connections before powering on; instructor checks each station

**Key Concepts:**
- A brushed DC motor spins when current flows through it; reversing the current reverses the direction
- An H-Bridge uses four switches arranged in an H shape to control current direction through a motor
- The motor needs more power than the Micro:bit can provide, so a driver board supplies external power
- INT1/INT2 control Motor A; INT3/INT4 control Motor B

**Common Mistakes:**
- Connecting Vcc before signal wires (can destroy the driver board)
- Swapping ground and signal pins on the breakout board
- Connecting to the wrong INT pair (using INT1/INT3 instead of INT1/INT2)
- Forgetting to connect ground between the driver and breakout board

**Assessment Cues:**
- Student can point to each wire and explain what it connects
- Student follows the correct power-up sequence without prompting
- Student can predict what happens when INT1 is high and INT2 is low

**Differentiation:**
- Struggling: Provide a printed wiring diagram with color-coded connections; pair with a partner who has completed wiring
- Advanced: Have student wire both H-Bridge channels and connect two motors

{{< /instructor-guide >}}

## How Brushed Motors Work

One of the most common types of motors is the brushed continuous rotation DC
motor. These motors use the magnetic field created when electricity moves
through a wire to push against a permanent magnet. Motors come in a range of
sizes, from microscopically tiny to enormous, but we will be using a common type
of low-voltage motor that is small, simple, and inexpensive:

![Small DC Motor](../images/small_dc_motor.png)

These motors require a lot more power than our microcontroller can provide.
Additionally, for use in a robot, we would probably want the motor to be able to
turn both forward and backward, and turn at different speeds. A driver board
can help us with all of these problems.

## The H-Bridge Circuit

Our motor driver board has a circuit called an H-Bridge, because the circuit
is composed of switches in the shape of an "H":

![H-Bridge Diagram](../images/h-bridge1508A.png)

This driver has two H-Bridges on it. The inputs `INT1` and `INT2` control
Motor A, and `INT3` and `INT4` control Motor B.

When we turn pin `INT1` on and `INT2` off, the circuit turns on switches S1
and S4, which causes current to flow forward through the motor and the motor
turns forward. When `INT1` is off and `INT2` is on, the circuit turns on
switches S2 and S3, the current flows backward through the motor, and the motor
turns backward.

![H-Bridge Current Flow](../images/H-bridge.png)

*Image from [Driving a motor with the L9110 tutorial](https://nathanmelenbrink.github.io/lab/arduino/L9110.html)*

## Wiring Connections

Our driver board has two H-Bridges on it, which is very useful for a robot with
two wheels. However, we will only use one of them. Using Dupont wires, make these
connections:

- `INT1` (or `INT3`) to P0 signal (yellow)
- `INT2` (or `INT4`) to P1 signal (yellow)
- Gnd to P0 ground (-)
- Vcc to P0 power (+)

{{< callout type="warning" >}}
Very Important! Connect the power pin Vcc **last**, and disconnect it **first**. Do not
connect or disconnect the signal pins while power is applied. Violating these rules can
destroy the driver.

**It would be best to unplug both USB cables while connecting or disconnecting the H-Bridge.**
{{< /callout >}}

Then, connect the red and black motor leads to the "Motor A" terminals. It
does not matter which side the red and black go on; swapping them will make the
motor turn in the other direction when you program it to go forward. You may
have to use a breadboard to make the connections between male Dupont wires.

![H-Bridge Connections](../images/hbridge-1508A-connections.png)

{{< callout type="tip" >}}
Before powering on, double-check every wire against the diagram above. Have your
instructor verify your connections before plugging in USB cables.
{{< /callout >}}

## How It Works

If you would like to know more about how the brushed motor works, this video explains all of the details.

{{< youtube GQatiB-JHdI >}}

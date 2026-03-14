---
uid: CidYrl8x
title: "Servo Wiring"
weight: 10
---

{{< instructor-guide >}}

**Objectives:**
- Students will describe how a hobby servo differs from a continuous rotation motor
- Students will identify the three servo wires by color and function
- Students will correctly connect a servo to the Micro:bit breakout board

**Materials:**
- 1 Micro:bit with USB cable per student
- 1 breakout board per student
- 1 hobby servo (SG90 or similar) per student
- Battery pack with USB cable (optional, for higher torque)

**Timing:**
- 0-5 min: Introduce hobby servos; show physical servo and discuss how it differs from a brushed motor
- 5-10 min: Explain servo internals (motor, gear train, position sensor, control circuit)
- 10-15 min: Demonstrate the three-wire connection; emphasize wire color orientation
- 15-20 min: Students connect their servos to Pin 0
- 20-25 min: Instructor checks each connection before powering on

**Key Concepts:**
- A hobby servo contains a brushed motor, gear train, position sensor, and control circuitry
- Servos move to a specific angle (0-180 degrees) rather than spinning continuously
- The three wires are: brown (ground), red (power), and orange (signal)
- Servos are common in hobby robotics but too inaccurate for most commercial products

**Common Mistakes:**
- Plugging the servo connector in backward (brown wire on signal instead of ground)
- Connecting to the wrong pin group on the breakout board
- Trying to manually force the servo horn past its 180-degree range (can strip gears)
- Expecting continuous rotation from a standard hobby servo

**Assessment Cues:**
- Student can name the three wires and their functions without looking at notes
- Student's servo connector is oriented correctly on the breakout board
- Student can explain why a servo is useful for a robot arm but not for wheels

**Differentiation:**
- Struggling: Provide a color-coded reference card showing which wire goes where; mark Pin 0 on the breakout board with tape
- Advanced: Have student research continuous rotation servos and explain how they differ from standard servos

{{< /instructor-guide >}}

## What Is a Hobby Servo?

![Hobby Servo](../images/hobby_servo.png)

A hobby servo is built from a regular brushed motor, a gear train, a position
sensor, and some internal circuitry. It will only move back and forth 180
degrees -- it cannot turn around continuously. This makes servos useful for
moving joints on a robot arm or flaps on an airplane, but not for wheels on a
car.

Hobby servos are very inexpensive and easy to use, so they are common in hobby
projects. While there are some industrial versions, their inaccuracy makes them
rare in commercial products.

## Servo Wire Colors

Every hobby servo has three wires:

| Wire Color | Function | Breakout Pin |
|------------|----------|--------------|
| Brown      | Ground   | Black (-)    |
| Red        | Power    | Red (+)      |
| Orange     | Signal   | Yellow       |

## Connections

Servo connections are simple: just plug the three-position connector on the end
of the servo directly onto the three pins for **Pin 0** on the breakout board.
Make sure that:

- The **brown** servo wire connects to ground (black pin)
- The **orange** servo wire connects to signal (yellow pin)

![Servo Connections](../images/servo-connections.png)

{{< callout type="tip" >}}
The connector can only go on one way if you match the colors. If you are unsure,
ask your instructor to check before powering on.
{{< /callout >}}

{{< callout type="warning" >}}
Do not try to manually turn the servo horn past its limits. The gears inside are
small plastic teeth and can be stripped if forced.
{{< /callout >}}

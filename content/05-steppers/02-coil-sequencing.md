---
title: "Coil Sequencing"
uid: dQfoCZnk
weight: 20
---

{{< instructor-guide >}}

**Objectives:**
- Program the Micro:bit to drive a stepper motor using the MakeCode stepper extension
- Observe and explain the LED pattern on the ULN2003 driver board
- Describe how coil sequencing causes a stepper motor to rotate

**Materials:**
- Completed stepper wiring setup from previous lesson
- Computer with internet access for MakeCode
- Micro:bit USB cable

**Timing:**
- 0:00 - 0:05 — Students add the stepper extension in MakeCode and enter the program
- 0:05 - 0:10 — Download and run the program; observe motor movement
- 0:10 - 0:15 — Change delay to 500 ms and re-download; observe LED blinking pattern on the driver board
- 0:15 - 0:25 — Discuss the coil diagram: how energizing coils in sequence creates rotation; identify the 1-2, 2-3, 3-4, 4-1 pattern
- 0:25 - 0:30 — Watch the embedded video(s); wrap up with questions

**Key Concepts:**
- The stepper motor contains four electromagnetic coils arranged in a circle
- Energizing coils in a specific sequence (1&2, 2&3, 3&4, 4&1) makes the rotor "chase" the active electromagnets
- The delay between steps controls how fast the motor turns — too fast and the motor skips steps
- This stepping pattern is called "full stepping"

**Common Mistakes:**
- Setting the delay too low (below ~2 ms) causes the motor to vibrate or stall because it cannot keep up
- Forgetting to add the stepper extension before entering the program blocks
- Confusing the LED indicator lights on the driver board with the Micro:bit LEDs

**Assessment Cues:**
- Student can describe the LED pattern (1&2, 2&3, 3&4, 4&1) and relate it to coil activation
- Student can explain why changing the delay affects motor speed
- Student can predict what happens if coils are activated in reverse order (motor spins the other way)

**Differentiation:**
- Struggling: Have them sketch the four coils in a circle and number them. Then trace the activation pattern step by step while watching the LEDs.
- Advanced: Challenge them to modify the program to change direction, speed, or number of steps. Can they make the motor turn exactly one full rotation and stop?

{{< /instructor-guide >}}

## Adding the Stepper Extension

Create a new MakeCode project and add the stepper extension:

![Stepper extension in MakeCode](../images/stepper-extension.png)

## The Stepper Program

Enter this program:

![Stepper program blocks](../images/stepper-program.png)

You can also import this program from [https://github.com/League-Microbit/stepper](https://github.com/League-Microbit/stepper).

After you download the program, you should see the shaft of the stepper motor moving back and forth.

## What Is It Doing?

You will notice that the LEDs on the driver board seem to be blinking, but they are blinking too fast to see the pattern. Let's slow it down.

In the block **"set delay between steps to"**, change the value from **0 ms** to **500 ms**. The "ms" means "milliseconds" or 1/1000 of a second. So 500/1000 seconds is half a second.

After making the change, download the program again and observe the LEDs. Now that we've increased the delay, we can see the patterns of the LEDs, which indicate which magnetic coils are being activated to move the motor in one direction or the other.

{{< callout type="tip" >}}
If your motor vibrates but does not turn, your delay might be too short or your wires may be in the wrong order. Try increasing the delay or double-checking your IN1-IN4 connections.
{{< /callout >}}

## Understanding the Coil Pattern

Let's figure out what these lights mean by looking at the wiring diagram for the motor:

![28BYJ-48 Stepper Motor Coils](../images/28BYJ-48-stepper-motor-coils.png)

*Image from [Random Nerd Tutorials](https://randomnerdtutorials.com/esp32-stepper-motor-28byj-48-uln2003/)*

The squiggly parts of the diagram are magnetic coils — they are just electromagnets. The common connection for all of the coils is pin 5. Each of the LEDs indicates that power is being applied to one of the pins, and when that happens, it turns on one of the electromagnets.

The LED pattern is:

- **1 & 2**
- **2 & 3**
- **3 & 4**
- **4 & 1**

Just like an electromagnet picks up paperclips or nails, the electromagnetic coils in the stepper attract the rotor, which turns a bit. By energizing these coils in order, we can make the rotating rotor "chase" the electromagnets, causing it to rotate.

{{< callout type="tip" >}}
This stepping pattern is called **full stepping**. There are also half-stepping and micro-stepping modes that provide smoother motion and finer positioning, but full stepping is the simplest to understand.
{{< /callout >}}

## Inside a Stepper Motor

If you want to understand how this works in more detail, this video will show you what is inside the stepper motor:

{{< youtube 15K9N1yVnhc >}}

## Learn More

Here is a video about how stepper motors work:

{{< youtube 09Mpkjcr0bo >}}

## Challenges

1. **Speed test:** What is the fastest delay (smallest number of milliseconds) that still makes your motor turn smoothly? Record the value.
2. **Precision challenge:** Can you program the motor to turn exactly one full rotation (2,000 steps) and then stop?
3. **Direction control:** Modify the program so the motor turns in only one direction. What did you change?

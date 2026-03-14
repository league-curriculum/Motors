---
uid: fSBngT8G
title: "Sweep Programs"
weight: 20
---

{{< instructor-guide >}}

**Objectives:**
- Students will install the servo extension in MakeCode
- Students will write a program that sweeps a servo through its full 180-degree range
- Students will modify sweep speed and add button-controlled servo movement

**Materials:**
- 1 Micro:bit with USB cable per student
- 1 breakout board per student
- 1 hobby servo (already wired from previous lesson)
- Computer with MakeCode editor open in browser

**Timing:**
- 0-5 min: Review servo connections from previous lesson
- 5-10 min: Demonstrate how to install the servo extension in MakeCode
- 10-20 min: Students create and download the sweep program
- 20-25 min: Test and troubleshoot; verify servos are sweeping correctly
- 25-35 min: Challenge activities (faster sweep, button control)
- 35-40 min: Share and discuss results

**Key Concepts:**
- MakeCode extensions add new block categories for specific hardware
- The servo extension provides blocks that set a servo to a specific angle
- A sweep program loops through angles from 0 to 180 and back, with small pauses between steps
- Changing the pause duration changes the sweep speed

**Common Mistakes:**
- Forgetting to install the servo extension before trying to use servo blocks
- Setting angles outside the 0-180 range (servo will not respond or may buzz)
- Making the pause too short (servo cannot physically move fast enough and will vibrate)
- Using the wrong pin number in the servo block (must match the physical connection)

**Assessment Cues:**
- Student's servo sweeps smoothly through the full range without stuttering
- Student can explain what would happen if the pause value were changed
- Student successfully modifies the program for at least one challenge

**Differentiation:**
- Struggling: Provide the sweep program pre-built and focus on downloading and testing; have them make one small change (pause value)
- Advanced: Write a program that moves the servo to specific angles based on light level or accelerometer tilt

{{< /instructor-guide >}}

## Installing the Servo Extension

Before writing a servo program, you need to install the servo extension in
MakeCode. Open the MakeCode editor, click on **Extensions**, and search for
"servo":

![Servo Extension](../images/servo-extension.png)

Click on the servo extension to install it. You will see new blocks appear in
the block palette.

## Sweep Program

Create a new program like this one:

![Sweep Program](../images/servo-sweep.png)

You can import this program from GitHub:
`https://github.com/League-Microbit/Servo-Sweep.git`

Download the program to your Micro:bit. Your servo should now sweep back and
forth through the full range of its motion, 180 degrees.

{{< callout type="tip" >}}
If the servo buzzes or vibrates instead of sweeping, check that your pin number
in the code matches the pin where the servo is physically connected (Pin 0).
{{< /callout >}}

## Challenges

Here are a few things to try:

1. **Faster sweep** -- Make the servo sweep faster by reducing the pause between
   angle changes.
2. **Button control** -- Make the servo move with the **A** and **B** buttons.
   For example, A moves it 10 degrees clockwise and B moves it 10 degrees
   counterclockwise.
3. **Tilt control** -- Use the accelerometer to control the servo angle based on
   how you tilt the Micro:bit.
4. **Light tracker** -- Use the light sensor to point the servo toward the
   brightest direction.

## Learn More

If you are interested in the details of how a hobby servo works, this video
offers a complete teardown and explanation of the parts.

{{< youtube xB_4KB72res >}}

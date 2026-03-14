---
title: "Motor Comparison"
uid: S9yaBZPO
weight: 10
---

{{< instructor-guide >}}

**Objectives:**
- Compare brushed DC motors, hobby servos, and stepper motors across multiple criteria
- Select the appropriate motor type for a given application
- Summarize what was learned across the entire motors course

**Materials:**
- Whiteboard or projector for displaying the comparison table
- (Optional) All three motor types on the table for reference

**Timing:**
- 0:00 - 0:05 — Ask students to recall the three motor types they worked with; list them on the board
- 0:05 - 0:15 — Build the comparison table together as a class, filling in columns based on what students remember
- 0:15 - 0:20 — Discuss "when to use which" scenarios; have students argue for a motor choice
- 0:20 - 0:25 — Quick review activity: give a use case, students hold up 1, 2, or 3 fingers for their motor choice

**Key Concepts:**
- Each motor type has trade-offs between cost, precision, and complexity
- Brushed DC motors are simplest and cheapest but offer no positioning control
- Servos provide angular positioning but are limited to about 180 degrees
- Stepper motors provide the most precision but require more complex control and cost more

**Common Mistakes:**
- Thinking servos can rotate continuously (standard hobby servos cannot)
- Confusing "precision" with "speed" — stepper motors are precise but not necessarily fast
- Assuming more expensive always means better — the right motor depends on the application

**Assessment Cues:**
- Student can name all three motor types and one distinguishing characteristic of each
- Given a scenario (e.g., "I want to build a fan"), student can justify which motor to use
- Student can explain why a 3D printer uses steppers instead of DC motors

**Differentiation:**
- Struggling: Provide a partially filled comparison table and have them complete the missing cells.
- Advanced: Ask them to research a fourth motor type (e.g., brushless DC motor) and add it to the table.

{{< /instructor-guide >}}

## Motor Comparison Chart

Throughout this course, you have worked with three different types of motors. Each one has different strengths and is used for different purposes.

| | Brushed DC Motor | Hobby Servo | Stepper Motor |
|---|---|---|---|
| **Motion Type** | Continuous rotation | ~180° positioning | Discrete steps (full rotation possible) |
| **Control Method** | PWM speed + H-Bridge direction | PWM position signal | Coil sequencing |
| **Precision** | Low — no position feedback | Medium — set angle, not exact steps | High — exact step count |
| **Cost** | Cheapest | Mid-range | Most expensive |
| **Complexity** | Simple (2 wires + driver) | Simple (3 wires, built-in driver) | Complex (4+ wires + driver board) |
| **Common Uses** | Fans, toys, wheels, pumps | Robot arms, RC vehicles, pan/tilt cameras | 3D printers, CNC machines, camera sliders |

## When to Use Which Motor

**Use a brushed DC motor when:**
- You need continuous spinning (fans, wheels, propellers)
- You only care about speed and direction, not exact position
- Cost is a concern

**Use a hobby servo when:**
- You need to hold a specific angle (steering, robot joints, levers)
- You want simple wiring and control
- 180 degrees of motion is enough

**Use a stepper motor when:**
- You need precise positioning across many rotations (3D printer head, CNC drill)
- You need to know exactly how far the motor has moved
- You can handle the extra wiring and programming complexity

{{< callout type="tip" >}}
There is no single "best" motor. The right choice depends on what your project needs. A toy car uses DC motors for the wheels and a servo for steering — two different motors in one project!
{{< /callout >}}

## Quick Review

For each scenario below, decide which motor type would be the best choice and explain why:

1. A robot arm that needs to pick up objects and place them precisely
2. A desk fan that spins at adjustable speeds
3. A 3D printer that moves a print head with 0.1 mm accuracy
4. A remote-control car's steering mechanism
5. An automatic pet feeder that dispenses food by rotating a wheel

## What You Learned

In this course, you explored:

- **Brushed DC motors** — how they spin using magnetic fields, how to control speed with PWM, and how to reverse direction with an H-Bridge
- **Hobby servos** — how they use a PWM signal to hold a specific angle, and how their built-in gears and feedback circuit work
- **Stepper motors** — how they move in precise steps by energizing coils in sequence, and how a driver board manages the power they need

Each motor converts electrical energy into motion, but they do it in different ways that make each one ideal for specific jobs.

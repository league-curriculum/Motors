# Curik Course Specification

## Course Concept
A single 90-minute tech club session on motor control using BBC Micro:bit microcontrollers. Students in grades 6-12 (no prerequisites) learn to program and control brushed DC motors, hobby servos, and stepper motors. Foundational electronics (voltage, PWM, duty cycles) are covered in service of the programming tasks. The emphasis is on writing code to control motors, not on motor physics or electromagnetic theory.

## Target Students
Grades 6-12, no prerequisites. No prior programming or electronics experience needed.

## Educational Goals
Program a BBC Micro:bit to control three types of electric motors: brushed DC motors, hobby servos, and stepper motors. Understand PWM signals and duty cycles as the foundation for motor control.

## Student & Parent Goals
Robotics interest, STEM exploration, engineering pathway, fun hands-on enrichment.

## Learning Outcomes
1. Wire a brushed DC motor to an H-Bridge and control speed/direction with MakeCode
2. Connect and program a hobby servo to sweep through positions
3. Wire a stepper motor to a ULN2003 driver and program stepping sequences
4. Understand PWM signals and duty cycles as the basis for motor control

## Format
Tech Club — single 90-minute session covering all motor types.

## Scope
1 session, 90 minutes. All three motor types covered in one session. The existing 8-module Sphinx course structure will be condensed. Encoder and motor comparison modules may be cut given time constraints.

## Pedagogical Model
Project-based, hands-on learning. Each module follows a pattern: introduce the motor type and its operating principles, demonstrate the control circuit, then have students build and program the circuit themselves. Concepts are reinforced with oscilloscope visualization of signals and embedded video resources. Uses MakeCode block programming for accessibility.

## Research Summary
Migration of an existing Sphinx-based League course. Research identified two key gaps: (1) no encoder/closed-loop control coverage — encoders are fundamental to real motor applications and Pololu micro metal gearmotors with Hall effect encoders work well with micro:bit, and (2) no motor selection/comparison lesson. Several augmentations to existing modules were also identified (see research.md for details).

## Alignment Decision
Direct migration from existing Sphinx course. Course content, structure, and pedagogy are preserved, with two new modules added (Encoders, Choosing the Right Motor). The migration focuses on build system modernization while maintaining all existing lesson content, images, and embedded resources.

## Course Structure Outline
Single 90-minute session condensed from the original 8-module Sphinx course. Covers: (1) Getting Started — materials and quick setup, (2) Signals and Power — PWM and duty cycles, (3) Brushed Motors — H-Bridge speed/direction control, (4) Hobby Servos — wiring and sweep programs, (5) Steppers — coil sequencing with ULN2003. Encoder and motor comparison modules from the original course may be cut given time constraints.

## Assessment Plan
Hands-on demonstration-based assessment. Students show working circuits and programs for each motor type. No formal written tests — mastery is demonstrated by successfully building and controlling each motor type with the correct signals and circuits.

## Technical Decisions
Build system: Hugo static site generator with content/ directory structure and hugo.toml configuration. Hardware platform: BBC Micro:bit with MakeCode. Motor drivers: L9110 H-Bridge for DC motors, ULN2003 for steppers. Encoders: Pololu micro metal gearmotors with magnetic Hall effect encoder boards. Images hosted on League CDN (images.jointheleague.org). Embedded YouTube videos for supplementary content.

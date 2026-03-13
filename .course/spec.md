# Curik Course Specification

## Course Concept
A single 90-minute tech club session on motor control using BBC Micro:bit microcontrollers. Students in grades 6-12 (no prerequisites, no prior programming or electronics experience) learn to program and control brushed DC motors, hobby servos, and stepper motors. Foundational electronics (voltage, PWM, duty cycles) are covered in service of the programming tasks. The emphasis is on writing code to control motors, not on motor physics or electromagnetic theory. Appeals to students interested in robotics, STEM exploration, engineering pathways, and hands-on enrichment.

### Learning Outcomes
1. Wire a brushed DC motor to an H-Bridge and control speed/direction with MakeCode
2. Connect and program a hobby servo to sweep through positions
3. Wire a stepper motor to a ULN2003 driver and program stepping sequences
4. Understand PWM signals and duty cycles as the basis for motor control

## Pedagogical Model
Website with sequential lessons. Students receive a physical kit and follow lesson content on a Hugo site. Programs are built in MakeCode in the browser, loaded from GitHub links in the lessons. No repo, no Codespaces, no external platform. Session flow: explain, demonstrate, practice — instructor introduces each motor type, demonstrates the circuit, students build and program it. Self-paced progression; faster students move through more lessons with extra challenges. Students are not all taught the same thing at the same time. Tier 2.

## Research Summary
Existing Sphinx course is stronger than external alternatives in several areas: oscilloscope-based PWM instruction (unique among micro:bit tutorials), comprehensive stepper coil sequencing, and safety warnings for H-Bridge power. No external resource covers all three motor types in a single coherent flow. Encoder module should be cut — 90 minutes is too tight and MakeCode encoder support is immature. Recommended enhancements during migration: add learning objectives to each section, troubleshooting tips, challenges for all motor types (not just servo), and a motor comparison wrap-up chart. Fix typos from original content.

## Alignment Decision
No formal standards alignment. This is a tech club session — keep it informal. Standards candidates were reviewed (CSTA 2-CS-02, ISTE 1.5, NGSS MS-ETS1-4) but none are being formally adopted. Content adapted from existing Sphinx course, condensed to single 90-minute session with encoder module cut and motor comparison wrap-up added.

## Course Structure Outline
Single 90-minute session with sequential lessons:

1. **Getting Started** — materials, kit contents, quick Micro:bit setup
2. **Signals and Power** — PWM, duty cycles, oscilloscope visualization
3. **Brushed Motors** — H-Bridge wiring, speed/direction control
4. **Hobby Servos** — wiring, sweep programs
5. **Steppers** — ULN2003 driver, coil sequencing
6. **Wrap-up** — motor comparison chart

Each section includes learning objectives, troubleshooting tips, and extra challenges for faster students. Encoder module cut due to time constraints and immature MakeCode support.

## Assessment Plan
Working project demonstration. Students show working circuits and programs for each motor type they reach. No formal written tests or quizzes. Self-paced, so assessment is based on what each student completes during the session.

## Technical Decisions
Build system: Hugo static site generator with content/ directory structure and hugo.toml configuration. Hardware platform: BBC Micro:bit with MakeCode. Motor drivers: L9110 H-Bridge for DC motors, ULN2003 for steppers. MakeCode extensions: built-in servo blocks, pin-level digital/analog write for H-Bridge, Tinkertanker pxt-stepper-motor for 28BYJ-48. Images hosted on League CDN (images.jointheleague.org). Embedded YouTube videos for supplementary content.

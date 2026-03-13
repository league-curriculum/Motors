---
title: Existing Sphinx Course Analysis
number: 1
---

## Source
Existing Sphinx-based Motors course in _old/docs/source/. 6 lessons, ~30 images, Furo theme with myst_parser.

## Structure Found
1. Getting Started — materials and equipment inventory
2. Setup Micro:bit — MakeCode environment setup, first program (flashing-heart)
3. Signals and Power — voltage, PWM, oscilloscope usage, duty cycles, analog write
4. Brushed Motors — H-Bridge (L9110), speed/direction control, safety warnings
5. Hobby Servos — 3-wire connection, MakeCode servo extension, 180-degree sweep
6. Steppers — ULN2003 driver, 28BYJ-48 motor, coil sequencing, full stepping

## Pedagogical Pattern
Each motor lesson follows: introduce motor type → explain operating principles → show circuit connections → students build and program → embedded YouTube video for deeper understanding.

## Hardware Used
- BBC Micro:bit with breakout board
- L9110 H-Bridge for brushed DC motors
- ULN2003 driver board for stepper motors (28BYJ-48)
- Standard hobby servo
- Digital oscilloscopes (shared)
- MakeCode block programming (with Python mode shown for signals lesson)

## Gaps Identified
1. No encoder or closed-loop control coverage
2. No motor comparison or selection guidance
3. No assessment activities beyond "make it work"

## Images
~30 images hosted on League CDN (images.jointheleague.org). Cover circuit diagrams, oscilloscope traces, MakeCode program screenshots, and equipment photos.

## Embedded Videos
- Brushed motor mechanics (YouTube: GQatiB-JHdI)
- Servo teardown (YouTube: xB_4KB72res)
- Stepper internals (YouTube: 15K9N1yVnhc)
- Stepper explanation (YouTube: 09Mpkjcr0bo)

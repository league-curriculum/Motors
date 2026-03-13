---
title: External Resources and Standards Research
number: 2
---

## Research Summary: Micro:bit Motor Control Course

Research conducted 2026-03-13. Covers existing tutorials, curricula, MakeCode extensions, standards alignment candidates, and video resources for a 90-minute Micro:bit motor control session (grades 6-12).

---

## 1. Existing Micro:bit Motor Control Tutorials

### 1.1 Official & First-Party Resources

| Title | URL | Relevance | Type | Notes |
|-------|-----|-----------|------|-------|
| MakeCode Servo Reference | https://makecode.microbit.org/reference/servos | HIGH | Linked resource | Built-in blocks: setAngle, setPulse, run, stop, setRange, setStopOnNeutral. No extension needed for basic servo control. |
| micro:bit Servo Support Article | https://support.microbit.org/support/solutions/articles/19000101864-using-a-servo-with-the-micro-bit | HIGH | Linked resource | Official guidance on wiring SG90/Tower servo to Pin0, 3V, GND. Notes power limitations. |
| MakeCode Extensions Directory | https://makecode.microbit.org/extensions | MEDIUM | Linked resource | Gateway to community extensions including motor/stepper packages. |
| pxt-28byj-48-stepper (Tinkertanker) | https://makecode.microbit.org/pkg/tinkertanker/pxt-stepper-motor | HIGH | Linked resource | The exact extension used in the existing course. Blocks: create motor with 4 pins, move CW/CCW, set step delay. For 28BYJ-48 + ULN2003. |

### 1.2 Third-Party Tutorials

| Title | URL | Relevance | Type | Notes |
|-------|-----|-----------|------|-------|
| SparkFun SIK micro:bit - Experiment 8: Servo Motor | https://learn.sparkfun.com/tutorials/sparkfun-inventors-kit-for-microbit-experiment-guide/experiment-8-using-a-servo-motor | HIGH | Adapted resource | Excellent lesson structure: intro, parts, wiring diagram, code, expected behavior, troubleshooting. Covers PWM concepts. Good pedagogical model to reference. |
| Kitronik: Using micro:bit to Control a Servo | https://kitronik.co.uk/blogs/resources/using-bbc-microbit-control-servo | MEDIUM | Linked resource | Clear, concise servo wiring and programming guide. |
| Kitronik: Control a 360-Degree Servo | https://kitronik.co.uk/blogs/resources/control-a-360-degree-servo-with-a-bbc-microbit | LOW | Linked resource | Continuous rotation servos — not used in this course but good stretch content. |
| Instructables: Run a Micro Servo with Micro:bit | https://www.instructables.com/Run-a-Mini-Servo-With-Microbit/ | MEDIUM | Linked resource | 5-step beginner guide. Simple and visual. |
| Robotique.tech: Control DC Motor with Micro:bit | https://www.robotique.tech/robotics/control-a-dc-motor-with-microbit/ | MEDIUM | Adapted resource | Uses relay-based approach (on/off only, no speed control). Different from H-Bridge approach in existing course. Shows simpler alternative. |
| Robotique.tech: Control Stepper Motor with Micro:bit | https://www.robotique.tech/robotics/control-a-stepper-motor-by-microbit/ | MEDIUM | Linked resource | 28BYJ-48 with ULN2003, same hardware as existing course. |
| L298 H-Bridge with micro:bit (Little Bird) | https://learn.littlebirdelectronics.com.au/guides/l298-dual-h-bridge-motor-driver-with-micro-bit | MEDIUM | Adapted resource | L298 driver (different from L9110 in existing course) but same H-Bridge concepts. Speed + direction control. |
| Bigl.es: L298N Motor Controller with micro:bit | https://bigl.es/microcontroller-monday-control-an-l298n-motor-controller-with-micro-bit/ | MEDIUM | Linked resource | Another L298N tutorial, Python-focused. |
| SB Components: Motor Driver for micro:bit | https://shop.sb-components.co.uk/blogs/posts/step-by-step-process-to-control-dc-motor-with-the-micro-bit | MEDIUM | Linked resource | Uses dedicated motor driver board (SB product). Shows DC + servo control. |
| TeachWithICT: Connecting Servo to Micro:bit | https://www.teachwithict.com/servo.html | MEDIUM | Linked resource | Teacher-oriented resource with clear diagrams. |
| ELECFREAKS Starter Kit Lesson 10: Motor | https://www.elecfreaks.com/learn-en/microbitKit/Starter_Kit/starter_kit_case_10.html | LOW | Linked resource | Basic motor lesson, less comprehensive than existing course. |

### 1.3 Classroom-Ready Curricula

| Title | URL | Relevance | Type | Notes |
|-------|-----|-----------|------|-------|
| Kitronik Lesson in a Box: Simple Robotics for micro:bit | https://kitronik.co.uk/products/5657-kitronik-lesson-in-a-box-simple-robotics-for-the-bbc-micro-bit | HIGH | Adapted resource | Complete classroom package: lesson plans, worksheets, technician notes. Designed by teachers, tested by students. Ages 8-14+. Uses Klip Motor Driver Board. No soldering. Commercial product but pedagogical model is excellent reference. |
| Kitronik :MOVE mini Lesson Plans (4 lessons) | https://kitronik.co.uk/blogs/resources/lesson-plans-for-move-mini-microbit | MEDIUM | Adapted resource | 4 lesson plans for robot buggy. Motor control in context of robotics. |
| REV Robotics Intro to Robotics I | https://www.revrobotics.com/rev-77-2707/ | LOW | Adapted resource | Full robotics course (9-12, adaptable 6-8). Aligned to ISTE, CSTA, NGSS. Much broader scope than this course. Motor control is one unit. |
| Neptune Township Robotics Curriculum Gr 6-8 | https://www.neptuneschools.org/ourpages/auto/2020/5/19/31712718/Robotics.pdf | LOW | Adapted resource | Full semester curriculum. Too broad but useful for standards alignment examples. |

---

## 2. MakeCode Motor Extensions Summary

| Extension | Package ID | Motor Type | Notes |
|-----------|-----------|------------|-------|
| Built-in Servo | (core) | Hobby servo | setAngle, setPulse, run, stop. No install needed. |
| Tinkertanker Stepper | tinkertanker/pxt-stepper-motor | 28BYJ-48 | Used in existing course. Create motor, move CW/CCW, set delay. |
| Sarahhyy 28BYJ-48 | sarahhyy/pxt-28BYJ-48-stepper | 28BYJ-48 | Alternative stepper extension, supports multiple motors. |
| Kitronik Move Motor | KitronikLtd/pxt-kitronik-move-motor | DC motors | For Kitronik :MOVE Motor board. Motors + LEDs + sensors. |
| MakerBit Motor | 1010Technologies/pxt-makerbit-motor | DC motors | For MakerBit board. |
| DFRobot Driver Board | (via wiki) | DC + stepper + servo | 4-way motor / 2-way stepper / 8 servo. |

**Note**: The existing course uses pin-level analog/digital write for H-Bridge control (no extension needed) and the Tinkertanker stepper extension. Servo uses built-in MakeCode servo blocks. This is a good approach — minimal extension dependencies.

---

## 3. Standards Alignment Candidates

### 3.1 CSTA K-12 Computer Science Standards (2017)

| Standard | Description | Fit |
|----------|-------------|-----|
| 2-CS-02 (6-8) | Design projects that combine hardware and software components to collect and exchange data. | HIGH — students wire hardware and program micro:bit to control motors. |
| 2-AP-10 (6-8) | Use flowcharts and/or pseudocode to address complex problems as algorithms. | MEDIUM — programs are simple but involve sequencing. |
| 2-AP-13 (6-8) | Decompose problems and subproblems into parts to facilitate the design, implementation, and review of programs. | MEDIUM — each motor type is a sub-problem. |
| 3A-CS-02 (9-12) | Compare levels of abstraction and interactions between application software, system software, and hardware layers. | MEDIUM — MakeCode blocks abstract pin-level signals. |
| 3A-AP-13 (9-12) | Create prototypes that use algorithms to solve computational problems by leveraging prior student knowledge and personal interests. | MEDIUM — motor control programs are prototypes. |

### 3.2 NGSS Engineering Design Standards

| Standard | Description | Fit |
|----------|-------------|-----|
| MS-ETS1-1 | Define criteria and constraints of a design problem. | LOW-MEDIUM — students follow instructions rather than defining problems, but wiring constraints are real. |
| MS-ETS1-4 | Develop a model to generate data for iterative testing and modification of a proposed object, tool, or process. | MEDIUM — students modify duty cycles, observe motor behavior, iterate. |
| HS-ETS1-2 | Design a solution to a complex real-world problem. | LOW — this is a guided lab, not open-ended design. Could be enhanced with a challenge activity. |

### 3.3 ISTE Standards for Students (2024)

| Standard | Description | Fit |
|----------|-------------|-----|
| 1.1 Empowered Learner | Students leverage technology to take an active role in choosing, achieving, and demonstrating competency in their learning goals. | MEDIUM — self-paced progression allows student agency. |
| 1.4 Innovative Designer | Students use a variety of technologies within a design process to identify and solve problems by creating new, useful, or imaginative solutions. | MEDIUM — students build circuits and programs to control motors. |
| 1.5 Computational Thinker | Students develop and employ strategies for understanding and solving problems in ways that leverage the power of technological methods. | HIGH — PWM/duty cycle understanding, debugging circuits and code. |

### 3.4 NGSS Physical Science (Tangential)

| Standard | Description | Fit |
|----------|-------------|-----|
| MS-PS2-3 | Ask questions about data to determine the factors that affect the strength of electric and magnetic forces. | LOW — electromagnet coils in steppers touch on this, but it's not the focus. |
| HS-PS2-5 | Plan and conduct an investigation to provide evidence that an electric current can produce a magnetic field. | LOW — steppers demonstrate this but the course doesn't investigate it formally. |

**Recommendation**: Primary alignment to **CSTA 2-CS-02** and **ISTE 1.5 Computational Thinker**. These are the strongest fits and don't require restructuring the course. NGSS engineering standards could be addressed by adding an optional design challenge.

---

## 4. Video Resources

### Already Embedded in Existing Course
| Topic | YouTube ID | Title/Topic |
|-------|-----------|-------------|
| Brushed motor mechanics | GQatiB-JHdI | How brushed DC motors work |
| Servo teardown | xB_4KB72res | Hobby servo internals |
| Stepper internals | 15K9N1yVnhc | Inside a stepper motor |
| Stepper explanation | 09Mpkjcr0bo | How stepper motors work |

These are good supplementary "Learn More" videos. They should be preserved in the migration.

### Additional Video Candidates (for linking)
| Topic | Source | Notes |
|-------|--------|-------|
| PWM/duty cycle fundamentals | Arduino.cc PWM tutorial, Electronics Tutorials | Text-based but could search for matching YouTube content. The existing course uses an oscilloscope to teach this — a stronger approach than video alone. |

---

## 5. Gaps Analysis

### Topics Not Well Covered by Existing External Materials

| Gap | Details | Recommendation |
|-----|---------|----------------|
| **Oscilloscope-based PWM teaching** | The existing course uniquely uses physical oscilloscopes to visualize PWM signals. No external micro:bit tutorial does this. | STRENGTH — keep and emphasize this approach. It's hands-on and concrete. |
| **Encoder/closed-loop control for micro:bit** | Very limited. One MakeCode forum post about N20 motors with Hall encoders; no complete tutorial or extension. | GAP — if adding encoder content, this course would be pioneering. But given 90-minute constraint, likely out of scope. |
| **Motor selection/comparison** | No existing micro:bit tutorial compares motor types side-by-side. | GAP — a comparison chart or wrap-up discussion would be valuable and unique. Feasible in 2-3 minutes at session end. |
| **Safety practices for motor circuits** | The existing course has a good warning about H-Bridge power sequencing. External tutorials rarely cover this. | STRENGTH — keep the safety warnings. |
| **Complete 3-motor-type coverage** | No single external resource covers DC + servo + stepper in one coherent flow for micro:bit. Most cover one type. | STRENGTH — this course's breadth is unique. |

### Gaps in the Existing Course (vs. external resources)

| Gap | Details | Recommendation |
|-----|---------|----------------|
| **Troubleshooting guidance** | SparkFun includes troubleshooting sections; existing course does not. | ENHANCE — add brief troubleshooting tips per motor type. |
| **Circuit diagrams** | External tutorials often include proper schematic diagrams alongside photos. Existing course uses only connection photos. | NICE-TO-HAVE — photos work well for this audience, but a simple schematic could help advanced students. |
| **"Try It" challenges** | Only the servo section has explicit challenges. DC motor and stepper sections lack them. | ENHANCE — add 2-3 challenge prompts per motor type for faster students. |
| **Formalized learning objectives** | External curricula (Kitronik, SparkFun) state objectives up front. Existing course jumps straight to content. | ENHANCE — add learning objectives to each lesson for the Hugo migration. |

---

## 6. How Existing Sphinx Content Compares

| Topic in Old Content | External Coverage | Assessment |
|---------------------|-------------------|------------|
| Getting Started (materials) | SparkFun SIK has similar parts list | Existing is fine; specific to League kit |
| Setup Micro:bit | Official micro:bit docs cover this well | Existing is good; uses League's flashing-heart starter |
| Signals/Power/PWM | Arduino.cc has general PWM tutorial; no micro:bit-specific oscilloscope tutorial | **Existing is BETTER** — oscilloscope approach is unique and excellent |
| Brushed DC Motors (H-Bridge) | Multiple tutorials exist (Little Bird, bigl.es, Instructables) but use different driver boards (L298, L293D) | Existing is specific to L9110; good match to League hardware. Competitors have better diagrams. |
| Hobby Servos | Well-covered externally (SparkFun, Kitronik, official docs) | Existing is adequate but could add troubleshooting. External resources are more polished. |
| Steppers (ULN2003) | Tinkertanker extension page + robotique.tech tutorial | Existing is MORE DETAILED — explains coil sequencing, LED patterns, electromagnet physics. This is a strength. |

**Overall Assessment**: The existing course content is solid and has two clear advantages over external alternatives: (1) oscilloscope-based PWM instruction, and (2) comprehensive stepper motor explanation with coil sequencing. The main weaknesses are presentation polish (typos, missing troubleshooting) and lack of explicit learning objectives and differentiated challenges.

---

## 7. Recommendations

1. **Keep the core content** — the existing lessons are well-structured and cover ground that no single external resource matches.
2. **Primary alignment**: CSTA 2-CS-02, ISTE 1.5 Computational Thinker.
3. **Enhance during migration**: Add learning objectives, troubleshooting tips, and "Try It" challenges to all motor sections (not just servos).
4. **Link, don't replicate**: Point students to the official MakeCode servo reference and the Tinkertanker stepper extension page as supplementary resources.
5. **Cut encoder module** from scope — 90 minutes is too tight, and MakeCode encoder support is immature.
6. **Consider adding** a 2-minute motor comparison wrap-up at the end — no external resource does this.
7. **Fix typos and polish** — the existing content has several typos ("cuircuit", "accutate", "miliseconds", etc.) that should be corrected in migration.

---
title: "Oscilloscope"
uid: BVtcmSXI
weight: 20
---

{{< instructor-guide >}}

**Objectives:**
- Connect an oscilloscope to the Micro:bit breakout board to measure a signal
- Read an oscilloscope trace and identify voltage, frequency, and duty cycle
- Modify a program to change the duty cycle of a PWM signal

**Materials:**
- 1 Micro:bit with breakout board per student (set up from previous lesson)
- 2 Dupont wires per student
- 1 digital oscilloscope per 2-3 students (shared)
- Alligator clip cables (attached to oscilloscope probes)

**Timing:**
- 5 min: Demonstrate how to connect the oscilloscope to the breakout board
- 5 min: Students connect their own oscilloscopes and run the analog write program
- 5 min: Explain how to read the oscilloscope trace (voltage, duty cycle)
- 10 min: Students switch to Python mode and enter the variable duty cycle program
- 5 min: Students observe the changing duty cycle on the oscilloscope and discuss

**Key Concepts:**
- An oscilloscope shows how voltage changes over time
- The duty cycle is the percentage of time a signal is at high voltage
- An analog write value of 512 produces a 50% duty cycle (512 is half of 1024)
- A square wave rapidly switches between 0V and 3.3V; this is the basis of PWM motor control

**Common Mistakes:**
- Connecting alligator clips to the wrong pins (red should go to yellow/signal, black to black/ground)
- Forgetting to press the "Auto" button on the oscilloscope to calibrate the display
- When switching to Python mode, accidentally deleting the entire program instead of editing it
- Confusing the oscilloscope probe connections: the signal clips to the yellow pin, ground clips to black

**Assessment Cues:**
- Students can point to the oscilloscope screen and identify the high voltage (3.3V) and low voltage (0V)
- Students can explain what "50% duty cycle" means in their own words
- The variable duty cycle program runs and students can see the signal changing on the oscilloscope

**Differentiation:**
- Struggling: Provide a labeled diagram of the oscilloscope connections; pair with a student who has a working setup
- Advanced: Have students calculate the exact duty cycle for specific analog write values and verify with the oscilloscope reading

{{< /instructor-guide >}}

## Connecting the Oscilloscope

Now let's connect the oscilloscope to see the signal your program is generating. Connect two Dupont wires (with the black square ends) to the P0 signal (yellow) and P0 ground (black) pins on the breakout board. Then connect the alligator clips to the other end of the Dupont wires, and plug the alligator clips into the oscilloscope.

After you make these connections, trace the black alligator clip through the Dupont wire to the black P0 pin, and trace the red alligator clip through the Dupont wire to the yellow P0 pin.

![Oscilloscope connection to breakout board](../images/oscope_connection.png)

{{< callout type="warning" >}}
Double-check your connections: the red/signal alligator clip goes to the yellow (signal) pin, and the black/ground alligator clip goes to the black (ground) pin. Reversing them will not damage anything, but you will not see a signal.
{{< /callout >}}

## Reading the Oscilloscope Trace

Follow these steps:

1. Turn on the oscilloscope
2. Download and run your analog write program
3. Press the **Auto** button on the oscilloscope

When you run the program and look at the signal, this is what you will see:

![50% duty cycle trace on oscilloscope](../images/50_duty_trace.png)

The yellow line that goes up and down is the voltage on the P0 pin of the Micro:bit. The bottom of the line is at 0 volts, and the top is at about 3.3V. You can see these voltages in the white text in the background for Vmax and Vmin.

The "Dut" text in the background is the **duty cycle**, which is the percentage of time that the signal is at a high voltage. It should be 50%, because the value we set in the program (512) is 50% of the way between the minimum analog value of 0 and the maximum value of 1024.

We will be using this signal, called a **square wave**, for controlling the motors.

{{< callout type="tip" >}}
Think of duty cycle like this: if the signal is high 50% of the time, the motor gets about 50% of the available power. A 25% duty cycle means the motor gets about 25% of the power and runs slower.
{{< /callout >}}

## Changing the Duty Cycle

Unlike the steady signal on our oscilloscope, the duty cycle of a motor control signal will change to adjust the speed or position of the motor. Let's update our program to change the signal.

Switch your program to **Python mode** using the toggle at the top of the screen, then edit the program to this:

```python
def on_forever():
    for index in range(5):
        pins.analog_write_pin(AnalogPin.P0, index)
        basic.pause(10)
basic.forever(on_forever)
```

After making this change, you will see the duty cycle change from 0% to 100%.

Watch the oscilloscope trace as the program runs. You should see the square wave getting wider (more time at high voltage) as the duty cycle increases.

### Troubleshooting

- **No trace on the oscilloscope:** Press the "Auto" button. If that does not work, check that the alligator clips are firmly attached to the Dupont wires.
- **Flat line on the oscilloscope:** Your program may not be running. Re-download it to the Micro:bit.
- **Duty cycle reads 0% or 100% and does not change:** Make sure you entered the Python program exactly as shown. Check that `range(5)` and the `basic.pause(10)` are correct.

### Challenge

Modify the Python program to sweep the duty cycle in both directions: from 0% up to 100%, and then back down from 100% to 0%. What would the oscilloscope trace look like?

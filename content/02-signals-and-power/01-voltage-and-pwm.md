---
title: "Voltage and PWM"
uid: 1XPxGBaC
weight: 10
---

{{< instructor-guide >}}

**Objectives:**
- Explain what a signal is in the context of electronics
- Describe how voltage can be used to convey information
- Write a MakeCode program that uses `analog write` to generate a PWM signal on pin P0
- Identify the three types of power connections: positive, negative, and ground

**Materials:**
- 1 Micro:bit per student (already set up from previous lesson)
- 1 short USB cable per student
- 1 computer with Chrome browser per student
- 1 breakout board per student
- 1 long USB cable per student

**Timing:**
- 5 min: Discuss what a signal is using the lamp/Morse code analogy
- 5 min: Students decode the Morse code message (fun engagement activity)
- 5 min: Explain voltage, positive/negative/ground power connections
- 10 min: Students write the analog write program in MakeCode
- 5 min: Students connect the breakout board with both USB cables

**Key Concepts:**
- A signal is an electrical impulse that conveys information, like Morse code with a lamp
- Voltage is like water pressure but with electrons; it can be high (on) or low (off)
- PWM (Pulse Width Modulation) rapidly switches voltage on and off to simulate varying power levels
- Circuits need three connections: positive power (red/Vcc), negative power (black), and ground (green/G)
- In our kits, negative and ground are always connected together

**Common Mistakes:**
- Students setting V1/V2 jumpers to 3.3V instead of 5V on the breakout board
- Forgetting to connect the long USB cable to power the breakout board
- Confusing the signal pins (yellow) with the power pins (red) on the breakout board
- Writing `digital write` instead of `analog write` in the program

**Assessment Cues:**
- Students can explain the lamp analogy in their own words
- Students can identify which pins on the breakout board are signal, power, and ground
- The analog write program is correctly entered and downloaded to the Micro:bit

**Differentiation:**
- Struggling: Provide a diagram showing which block to use and where to find it in the MakeCode menu
- Advanced: Have students calculate what duty cycle different analog write values would produce (e.g., 256 = 25%, 768 = 75%)

{{< /instructor-guide >}}

## What Is a Signal?

To control motors, we need to generate signals. A "signal" is an electrical impulse that conveys information.

Imagine that you are plugging in a lamp, and the lamp switch is on. When you plug it in, the light turns on. Then you unplug it and the light goes out.

If you have a neighbor who knows Morse code, you could send a message this way. You plug the light in sometimes for a short time, or sometimes for a long time. If "-" means you leave the light plugged in for a long time (1 second) and "." means you leave it plugged in for a short time (1/2 second), you can send this message by plugging and unplugging:

```
.-.. . - .----. ... /
.--. .-.. .- -.-- /
-..- -... --- -..- .-.-.- /
-... .-. .. -. --./
 - .- -.- .. ... .-.-.- /
```

A few minutes later, your friend arrives at your house with your favorite snack.

Cut and paste the Morse code into the [Morse Code Translator](https://morsecode.world/international/translator.html) to decode the message.

## Voltage

When you plugged the light into the socket, you produced a voltage at the light bulb. When you unplugged it, you removed the voltage. Voltage is like water pressure in a hose, but with electrons instead of water. A lot of electronics use voltage to convey information, just like you did when you sent the message to your friend with the light.

That is what we are going to do now: change the voltage on a wire to send a signal.

## Connecting Power

Before we hook up some motors, we need to understand a bit about electrical power.

When you are connecting circuits together, you will need to not only connect the signals, but also supply power for running the circuit. Some circuits, such as the Micro:bit, get their power from the USB connection, but other circuits will need to be connected to a power line.

![Battery connected to motor](../images/bat-to-motor.png)

There are several types of connections we will need:

- **Positive power** — often marked with a "+" or "Vcc." The color is usually red. (However, in this kit, our power supply wire is white.)
- **Negative power** — often marked with a "-." The color is usually black. It is often connected to ground.
- **Ground** — a neutral wire that always has 0 volts. It is labeled "G" or "GND" and its color is green. It is often connected to the power supply negative.

For the types of circuits we will work on, the negative is always connected to ground. Because ground and negative are always connected, the color for these connections is black, not green.

{{< callout type="tip" >}}
The ground connection is called "ground" because it is literally connected to a stake in the ground. The ground wire of our circuits connects to the building's electrical ground. If an electrical wall socket looks like a face, the ground connection is the mouth. That wire goes to the electrical panel, where it connects to either a long copper spike driven into the ground or to a copper water pipe buried in the ground.
{{< /callout >}}

## Writing the Analog Write Program

Using the [MakeCode Editor](https://makecode.microbit.org), write this program. If you are still editing the old program, click ![Micro:bit](../images/microbit.png) to go back to the main screen, then click **+ New Project** to start a new project. Call the project something like "Analog Write" or "Signals."

The `analog write` block is in the **Advanced >> Pins** section of the block menu.

![Analog write program in forever block](../images/forever-analog-write.png)

## Hardware Setup

Driving a motor requires a lot of power, more than the Micro:bit can supply through its pins. So we will attach a breakout board that has an extra power supply. This board requires another USB port. When these parts are assembled, it will look like this:

![Breakout board connected to Micro:bit](../images/breakout_connect.png)

Notice that the program says it will write to "Pin P0." The pin "P0" is the yellow pin labeled "0" on the breakout board, in the upper left. The yellow pins are the signal pins. On the top of the row, they are labeled with "S" for signal.

![Breakout board pin layout](../images/breakout.png)

Next to the yellow signal pins are the red power pins. This row is labeled on the top with "V1" on the left and "V2" on the right. The two labels exist because these power rails can be set to different voltages. Look in the lower right for six pins and two yellow jumpers with "V1," "V2," "5V," and "3V3" printed around them. You can move the jumpers to make V1 and V2 either 5 volts or 3.3 volts. **Your board should be set to 5V.**

{{< callout type="warning" >}}
Make sure the voltage jumpers on your breakout board are set to 5V, not 3.3V. The motors need 5V to run properly.
{{< /callout >}}

### Troubleshooting

- **Breakout board not powering on:** Make sure the long USB cable is plugged into both the breakout board and a USB port on your computer (or a USB power adapter).
- **No signal on P0:** Double-check that your analog write program is downloaded and running. You should see the program in the MakeCode simulator before downloading.

### Challenge

Before connecting the oscilloscope, predict what value you would use in `analog write` to produce a 25% duty cycle. What about 75%? Write down your predictions.

# Signals

To control motors, we need to generate signals. A "signal" 
is an electrical impulse that conveys information. 

Imagine that you are pluging in a lamp, and the lamp switch is on. When you plug it
in, the light lights up. Then you unplug it and the light goes out. Ah ha!

If you have a neighbor friend who knows Morse code, you might send a message.
You plug the light in sometimes for a short time, or sometimes for a long time.
If "-" means you leave the light in for a long time ( 1 second ) and "." means
you leave the light plug in for a short time ( 1/2 second. ) Pluging and
unplugging, you can send this message: 

```
.-.. . - .----. ... /
.--. .-.. .- -.-- /
-..- -... --- -..- .-.-.- /
-... .-. .. -. --./
 - .- -.- .. ... .-.-.- /
```

A few minutes later, your friend arrives at your house, with your favorite snack. 

( Cut and paste the Morse code into  the [Morse Code Translator](https://morsecode.world/international/translator.html) 
to decode the message. 

When you pluged the light into the socket, you produced a voltage at the light
bulb. And when you unpluged it, you removed the voltage. A voltage is like water
pressure in a hose, but with electrons instead of water, and a lot of
electronics use voltage to convey information, just like you did when you sent
the message to your friend with the light. So, you can also change the voltage
on a wire to send a signal. 

That is what we are going to do now: change the voltage on a wire to send a signal. 

## Program

Using the Makecode editor, write this program. The  `analog write` block is in the "Advanced >> Pins " section. 

![foo](/images/forever-analog-write.png)

## Hardware Setup

![breakout](https://images.jointheleague.org/motors/breakout_connect.png){.c600}


## Oscilloscope Trace

When you run the program and look at the signal, this is what you will see: 

![50_duty_trace](https://images.jointheleague.org/motors/50_duty_trace.png){.c600}

The yellow line that goes up and down is the voltage on the `P0` pin of the
Micro:bit. The bottom of the line is at 0 volts, and the top of the line is at
about 3.3V. ( You can see these voltages in the white text in the background,
for Vmax and Vmin )

The "Dut" text in the background is the "Duty Cycle", which is the percentage of
the time that the signal is at a high voltage. It should be 50%, because the
value we set in the program , 512, is 50% of the way between the min value for
the analog value of 0, and the maximum value of 1024. 

We will be using this signal, which is called a "Square Wave" for controlling 
the motors. 

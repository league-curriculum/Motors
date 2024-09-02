# Signals

To control motors, we need to generate signals. A "signal" 
is an electrical impulse that conveys information. 

Imagine that you are pluging in a lamp, and the lamp is on. When you plug it
in, the light lights up. Then you unplug it and the light goes out. Ah ha!

If you have a neighbor friend who knows Morse code, you might send a message.
You plug the light in for a shgort time, or a log time. If "-" means you leave
the light in for a long time ( 1 second ) and "." means you leave the light plug
in for a short time ( 1/2 second. ) Pluging and unplugging, you send this
message: 

```
.-.. . - .----. ... /
.--. .-.. .- -.-- /
-..- -... --- -..- .-.-.- /
-... .-. .. -. --./
 - .- -.- .. ... .-.-.- /
```

A few minutes later, your friend arrives at your house, with your favorite snack. 

( Cut and paste the Morse code into  the [Morse Code Translator](https://morsecode.world/international/translator.html) decode the message. 

When you pluged the light into the socket, you produced a voltage at the light
bulb. And when you unpluged it, you removed the voltage. A voltage is like water
pressure in a hose, but with electrons instead of water, and a lot of
electronics use voltage to convey information, just like you did when you sent
the message to your friend with the light. So, you can change the volvate on a
wire to send a signal. 

That is what we are going to do now: change the voltage on a wire to send a signal. 

# Program

Using the Makecode editor, write this program. The  `analog write` block is in the "Advanced >> Pins " section. 

![foo](/images/forever-analog-write.png)
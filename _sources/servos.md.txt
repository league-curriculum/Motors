# Hobby Servos

![motor](https://images.jointheleague.org/motors/hobby_servo.png){.c300}

A hobby servo is built from a regular brushed motor,  gear train, a position
sensor, and some internal circuitry. It will only move back and forth 180
degrees; it can't turn around continuously. This makes them useful for moving
joints on a robot arm or flaps on an airplane, but not for wheels on a car.
They are very inexpensive and easy to use, so they are common in hobby
projects. While there are some industrial versions, their inaccuracy makes them
rare in commercial products. 

## Connections

Servo connections are super easy; just plug the three position plug on the end
of the servo right onto the three pins for Pin 0 on the breakout board. Be sure
that the brown servo wire is ground ( black pin ) and the orange servo wire is
the signal ( yellow ). 

![servo-connections](/images/servo-connections.png)

## Program

First, install the servo extension into Makecode:

![servo_extension](/images/servo-extension.png)

Then, create a new program like this one: 

![sweep_program](/images/servo-sweep.png)

You can import this program from https://github.com/League-Microbit/Servo-Sweep.git.

Your servo should now be sweeping back and forth through the
full range of its motion, 180 degrees. 

## Try It

Here are a few things to try: 

* Make the servo sweep faster
* Make the servo move with the `A` and `B` buttons. 


## Learn More

If you are interested in the details of how a hobby servo, this video offers a
complete teardown and explaination of the parts. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/xB_4KB72res?si=U_3K69sjkFg1TIGI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


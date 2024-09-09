# Brush Motors


One of the most common types of motors is the brushed continuous rotation DC
motor. These motors use the magnetic field created when electricity moves
through a wire to push against a permanent magnet. Motors come in a range of
sizes, from microscopically tiny to enormous, but we will be using a common type
of low voltage motors that is small, simple and inexpensive: 

![motor](https://images.jointheleague.org/motors/small_dc_motor.png){.c200}

These motors will require a lot more power than our microcontroller can provide.
Additionally, for use in a robot, we'd probably want the motor to be able to
turn both forward and backwards, and turn at different speeds. A driver board
can help us with all of these problems. 

Our motor driver board has a cuircuit called an H-Bridge, because the circuit
is composed of switches in the shape of an "H"

![driverboard](/images/hbridge-top.png){.c200}

When we turn pin A-1A on, the circuit turns on switches S1 and S4, which causes
current to flow forward through the motor and the motor turns forward.  When
A-1A is off and A-1B is on, the circuit turns on switch S2 and S3, the current
flows backwards through the motor, and the motor turns backwards. 

![H-Bridge](https://nathanmelenbrink.github.io/lab/arduino/H-bridge.png){.c300}

<p style="text-align: center;">Image from of 
<a href="https://nathanmelenbrink.github.io/lab/arduino/L9110.html">Driving a motor with the L9110 tutorial</a></p>

## Connections

Our driver board has two h-bridges on it, which is very useful for a robot with
two wheels. However, we will only us one of them. Using dupont wires, make these
connections: 

* A-1A to P0 signal ( yellow )
* A-1B to P1 signal (yellow )
* Vcc to P0 power ( red)
* Gnd to P0 ground. ( black )

Then, connect the red and black motor leads to the "motor a" terminals. It
doesn't matter which side the red and black go on; swapping them will make the
motor turn in the other direction when you program it to go forward. You may
have to use a breadboard to make the connections between male Dupont wires. 


![step_driver_cons](/images/hbridge-connections.png){.c400}

## Program

Here is a suggested program, but you can write a different program if you'd
like. The important part is that to go one direction, write a 0 to P0 and 1 to
P1. To reverse, write a 1 to P0 and a 0 to P1.

![step_driver_cons](/images/hbridge-buttons-program.png){.c400}

( You can import this program from Github with the url https://github.com/League-Microbit/H-Bridge-Control.git)


## How it Works


If you'd like to know about how the brushed motor works, this video will explain all of the details. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/GQatiB-JHdI?si=U-8nnhc32NCSErfj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

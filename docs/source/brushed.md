# Brush Motors


One of the most common types of motors is the brushed continuous rotation DC motor. These motors use the magnetic field created when electricity moves through a wire to push against a permanent magnet. Motors come in a tange of sizes, from microscopically tiny to enormous, but we will be using a common type of low voltage motors that is small, simple and inexpensive: 
![motor](https://images.jointheleague.org/motors/small_dc_motor.png){.c200}

## How they Work

<iframe width="560" height="315" src="https://www.youtube.com/embed/GQatiB-JHdI?si=U-8nnhc32NCSErfj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Connections

![step_driver_cons](/images/hbridge-connections.png){.c400}

## Program

![step_driver_cons](/images/hbridge-program.png){.c400}


## How it Works

Our motor driver board has a cuircuit called an H-Bridge, because the cuircuit is compose of switches in the shape of an "H"

When we turn pin A-1A on, the circuit turns on switches S1 and S4, which causes
current to flow forward through the motor and the motor turns forward.  When
A-1A is off and A-1B is on, the circuit turns on switch S2 and S3, the current
flows backwards through the motor, and the motor turns backwards. 

![H-Bridge](https://nathanmelenbrink.github.io/lab/arduino/H-bridge.png){.c300}

<p style="text-align: center;">Image from of 
<a href="https://nathanmelenbrink.github.io/lab/arduino/L9110.html">Driving a motor with the L9110 tutorial</a></p>



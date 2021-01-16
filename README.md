[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

# Lava Particle Simulation
This OpenGL program uses animated particles to simulate  the appearance and motion of lava special effects.

## Background
<p align="center">
<img src="assets/pexels-clive-kim-4220967.jpg" width="200"/>
<p>
Particle simulation is commonly used in the field of special effects, such as sparks and explosions. Far beyond this domain, fluids, fire, water, smoke, cloth, and even physical character animation has been done through a particle representation. It is no only very useful, but one of the simplest mechanical systems for beginners to implement.
![](https://github.com/xiongjia000777/lava-particle-simulation/tree/master/assets/lava.gif)
 
## Install
This project is tested on MacOS Catalina 10.15.6 and Ubuntu 16.04 LTS. 
```sh
$ git clone https://github.com/xiongjia000777/lava-particle-simulation.git
$ cd lava-particle-simulation
$ make all
```

 ## Usage
### Run
 ```sh
 $ ./particle  
 ```
 ### Control
 ```
 MOUSE CONTROLS: 
  LMB: Rotate 
  MMB: Move 
  RMB: Zoom
KEYBOARD CONTROLS: 
  'p': Pause simulation
  'v': Toggle draw volcano
  'q': Exit
```
### Get rid of object and executable files
```sh
$ make clean
```
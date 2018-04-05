# About TasLink

TasLink Is used to replay [TASVideos](http://tasvideos.org/WelcomeToTASVideos.html) 
TAS Videos tool-assisted superplay/speedruns are recorded movies to replay Button inputs with Frame perfect timings.

## Install TasLink
---

1. [Download](#downloads)
2. [Dump latches](#dump-latches)
3. [Install VHDL](#install-vhdl)
4. [Run TasLink Software](#run-taslink-software)

---
## What is TasLink?

TASLink is a series of hardware and supporting software built around the Papilio Pro FPGA development board designed for interfacing with consoles. The hardware is in the form of "wings" (or "shields") that can be attached depending on the situation. There is currently hardware for NES/SNES and the N64.

# How to use TASLink:

## Downloads
---
* [Lsnes](http://tasvideos.org/Lsnes.html)
* [Python](https://www.python.org)
* Papilio Loader [Windows](http://forum.gadgetfactory.net/index.php?/files/file/10-papilio-loader-gui/) 
				 [Linux](https://github.com/GadgetFactory/Papilio-Loader/)
* [(more)]()

---
## Dump Latches

* Download TAS movie from [TASVideos.org](http://tasvideos.org)
* Download lsnes emulator and install, make sure you download a version that supports on_latch()
* Load lua script from [scripts](/scripts/emulator/SNES)
* Type in the messages window: `L start_dump("filename")` and press 'Execute'  
* Start playback    
* When finished type in the messages window: `L end_dump()` and press 'Execute'  

## Install VHDL

limited information avalible

* Run Papilio Loader
* Select [TASLink.bit](/HDL/TASLink/TasLink.bit) bit file
* Press Run

## Run TasLink Software

### Windows

* Shift right click on empty space your [TasLink.py](/TASLink/scripts/streaming) is located  
* Click open Powershell/Commandline here  
* type `TASLink.py <COM Port>` and press enter  

+ To Determine the number of the COM port the Papilio is using.
  * Right click on “My Computer” and select “Manage”.
  * Click on “Device Manager”
  * Expand “Ports”
  * Observe the “Papilio Serial Port” (usually the higest)

---
### Linux

no information avalible

---

### Running a TAS

For a new Run. Type: `new` and follow the instructions on screen.  
Save your run. Type: `save` and follow the instructions on screen.  
Run your TAS. Type: `load` and follow the instructions on screen.  
To restart the run. Type: `restart`


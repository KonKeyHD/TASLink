# About TasLink

TasLink Is used to replay [TASVideos](http://tasvideos.org/WelcomeToTASVideos.html) 
TAS Videos tool-assisted superplay/speedruns are recorded movies to replay Button inputs with Frame perfect timings.

---
## Install TasLink
* 0. [Download](#downloads)
* 1. [Dump latches](#dump-latches)
* 2. [Install VHDL](#install-vhdl)
* 3. [Run TasLink Software](#run-taslink-software)

---

## What is TasLink?

TASLink is a series of hardware and supporting software built around the Papilio Pro FPGA development board designed for interfacing with consoles. The hardware is in the form of "wings" (or "shields") that can be attached depending on the situation. There is currently hardware for NES/SNES and the N64.

# How to use TASLink:

## Downloads
---
* [Lsnes](http://tasvideos.org/Lsnes.html)
* [Python](https://www.python.org)
* [papillio pro bitfile uploader]()
* [(more)]()
---

## Dump Latches

Download TAS movie from [TASVideos.org](http://tasvideos.org)

Download lsnes emulator and install, make sure you download a version that supports on_latch()

Load lua script from [scripts](/scripts/emulator/SNES)

Type in the messages window: 
##### L start_dump ("filename")

and press 'Execute'

Start playback

when finished type in the messages window:

##### L end_dump ()

and press 'Execute'

## Install VHDL

limited information avalible

Run ?

select [TASLink.bit](/HDL/TASLink) bit file

Press (Upload/Burn/???)

## Run TasLink Software

limited information avalible

Run Python 

Run TASLink.py \<port of your papilio pro board with TASLink shield>

for a new Run. Type:

##### new

and follow the instructions on screen

save your run. Type:

##### save

and follow the instructions on screen

run your TAS. Type:

##### load

and follow the instructions on screen

restart your console if your console doesnt restart allready. 

if anything went wrong. Type:

##### restart

---

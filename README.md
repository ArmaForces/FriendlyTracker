<p align="center">
    <img src="https://avatars2.githubusercontent.com/u/50863181">
</p>
<p align="center">
    <a href="https://github.com/ArmaForces/FriendlyTracker/issues">
        <img src="https://img.shields.io/github/issues-raw/ArmaForces/FriendlyTracker.svg?label=Issues" alt="ArmaForces Friendly Tracker Issues">
    </a>
    <a href="https://github.com/ArmaForces/FriendlyTracker/blob/master/LICENSE">
        <img src="https://img.shields.io/badge/License-GPLv2-red.svg" alt="ArmaForces Friendly Tracker License">
    </a>
    <a href="https://github.com/ArmaForces/FriendlyTracker/actions">
        <img src="https://github.com/ArmaForces/FriendlyTracker/workflows/Arma/badge.svg">
    </a>
</p>
<p align="center"><sup><strong>Requires the latest version of <a href="https://github.com/CBATeam/CBA_A3/releases/latest">CBA</a>.</strong></sup></p>

**ArmaForces Friendly Tracker** is a collaborative effort by the members of <a href="https//armaforces.com/">ArmaForces</a>, polish Arma 3 community.

This addon adds friendly force tracking functionality to the game. It is our approach to BFT system. Built with modularity and high customization in mind, it serves it's purpose very well. It's clientside only, so no unnecessary network traffic.

The mod is on the same foundation as the ACE3 mod, using its framework, systems, tools and standards. It is entirely **open-source** and licensed under the GNU General Public License ([GPLv2](https://github.com/ArmaForces/FriendlyTracker/blob/master/LICENSE)).

Huge appreciation and thanks to [ACE3 Team](http://ace3mod.com/team.html) for their open-source nature and permission to use their systems.

## Features

### Friendly units tracking

Each player will have his very own small dot, changing it's color depending on various factors. Player will have his own dot colored yellow, and his teammates will be green, others will be blue. In case unconscious showing is enabled, anybody unconscious will be marked orange to indicate that he needs help. If player has assigned buddy in Diwako DUI, buddy will be marked pink.

### Friendly vehicles tracking

If vehicle showing is enabled and players enter vehicle their dots disappear and now they all share vehicle's marker. The same coloring rules aplly as before, with exception of orange of course as vehicle cannot be unconscious. When players leave the vehicle, it's marker disappears. It is possible to avoid this behaviour by adding specific vehicles for permament tracking, then they will be marked gray if empty and black if destroyed. Special tracked vehicles will also have their own khaki color (instead of blue) to indicate their importance.

### Groups tracking

Commanders might find useful to see whole group markers more than blob of blue dots. If enabled by server, they can turn on such markers, which will have apropriate NATO symbol and group's name. It will make it easier to get sense of who those campfire guys are.

### Tracking device

If enabled, unit must have tracking device in equipment (GPS/UAV terminal for now) to be able to see BFT markers on the map and to be marked on the map for other units. In the future, when tracking device will be implemented, there will be a possibility that unit will have a tracker but won't have a map, great concept for CSAR ops.

### Highly customizable

- Option to mark unconscious players as orange dots
- Option to show only player's group
- Clientside setting for whole group markers, useful for commanders.
- Ability to show player crewed vehicles and special vehicles
- Change markers refresh rate
- Require GPS for tracking (units without GPS will not be marked nor see any markers)
- Can be started or stopped any time

## Authors

- [3Mydlo3](https://github.com/3Mydlo3)
- [veteran29](https://github.com/veteran29)

# Contribution Setup

### Requirements

- Arma 3
- Arma 3 Tools (available on Steam)
- Run Arma 3 and Arma 3 Tools directly from Steam once to install registry entries (and again after every update)
- [HEMTT](https://github.com/synixebrett/HEMTT) binary placed in project root or globally installed
  - `hemtt` (Linux) or `hemtt.exe` (Windows) or `setup.exe` (Windows global install)

### Procedure

_Replace `hemtt` with `hemtt.exe` on Windows._

- Open terminal (Linux) or command line (Windows)
- Run `$ hemtt build` to create a development build (add `-f` to overwrite already built addons)
- Run `$ hemtt build --release` to create a release build (add `-f` to overwrite already built release)
- Run `$ hemtt clean` to clean build files

**Windows Helpers:**

- Double-click `build.bat` to create a development build

### Recommended tools

It's recommended to use [Visual Studio Code](https://) editor with following plugins to ensure equal development environment for all contributors:

- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [SQFLint](https://marketplace.visualstudio.com/items?itemName=skacekachna.sqflint)
- [SQF Langauge](https://marketplace.visualstudio.com/items?itemName=Armitxes.sqf)
- [psioniq File Header](https://marketplace.visualstudio.com/items?itemName=psioniq.psi-header)

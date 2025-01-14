<p align="center">
  <img src="https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/3-launcher/1-stable-channel/icon.png" alt="SSTools4MC Icon" width="200" />
</p>

# SSTools4MC - Server Startup Tools for Minecraft

SSTools4MC is a set of tools designed to assist you hosting your own dedicated Minecraft server.

## Table of Contents
- [Getting Started](#getting-started)
- [Installation](#installation)
  - [Minimum Requirements](#minimum-requirements)
  - [Python Installation](#python-installation)
  - [Java Installation](#java-installation)
- [Build SSTools4MC Installer by yourself](#build-sstools4mc-installer-by-yourself)
  - [Clone this Repository](#clone-this-repository)
  - [Install NSIS](#install-nsis)
  - [Verify Files](#verify-files)
  - [Edit .nsi file](#edit-nsi-file)
  - [Compile the Installer](#compile-the-installer)
- [Copyright and Disclaimer](#copyright-and-disclaimer)
- [Important and Acknowledgments](#important-and-acknowledgments)

## Getting Started
To get started with SSTools4MC, follow these steps:

1. Download the latest version of SSTools4MC from the [GitHub Releases](https://github.com/ngdplnk/SSTools4MC/releases/latest) page.
2. Run the installer. A shortcut should be created on your desktop and in your Windows start menu.
3. Enjoy!

## Installation
### Minimum Requirements
- Operating System: Windows 10 (64-bit - Version 10.0.14393.6796) or newer. Windows 10 22H2 recommended.
- Processor: 2 cores at 1.00GHz; x64 architecture.
- RAM: At least 1GB.
- Disk Space: Varies depending on the server.
- Python: 3.9 or newer.

### Python Installation
1. Download and install Python 3.11 or newer from the [official Python website](https://www.python.org/downloads/). When installing Python, be sure to select the "Add Python to PATH" option.
2. Done!

Python is necessary to run the program.

### Java Installation
1. Download the latest Java version installer from the [official Oracle website](https://www.oracle.com/cl/java/technologies/downloads/).
2. Run the installer and follow the on-screen instructions to install Java.
3. Verify the installation by opening a command prompt, powershell or terminal and running:
    ```bash
    java -version
    ```

If Java is correctly installed, the command should display the installed Java version.

Java is necessary to your machine to be able to run your Minecraft servers.

## Build SSTools4MC Installer by yourself

You can follow this steps if you want to build the SSTools4MC Installer from the source code by yourself.
Please note that this is not mandatory. You can always download the latest version of the installer from the [GitHub Releases](https://github.com/ngdplnk/SSTools4MC/releases/latest) page.

### Clone this Repository

First, clone/download this repository:

```bash
git clone https://github.com/ngdplnk/SSTools4MC.git
```

### Install NSIS

You need to install the latest NSIS (Nullsoft Scriptable Install System) version to build the installer. You can download it from [NSIS Official Website](https://nsis.sourceforge.io/Download). Be sure to follow the on-screen instructions to complete the installation.

### Verify Files

Navigate to the `3-launcher` folder in the cloned repository and there select a release channel that you want to build the launcher for (continue in subdirectory `1-stable-channel` for Stable channel or in subdirectory `2-dev-channel` for Dev Channel). Ensure that you have the following files (there may be more, but you need to have at least these):

If you are building the launcher for the Stable channel:
- `build.nsi`
- `icon.ico`
- `launcher.pyw`

If you are building the launcher for the Dev channel:
- `build-dev.nsi`
- `icon-dev.ico`
- `launcher-dev.pyw`

If any of these files are missing, please download them directly from the repository.

You will use the `main.py` from the `1-stable` folder if you are building the Stable Channel Launcher, or the `dev.py` file from the `2-dev` folder as your bundled version in the launcher you are building.

### Edit .nsi File

Open the `build.nsi` or `build-dev.nsi` file in a text editor and replace the placeholders `<TYPE THE XXXX PATH HERE>` with the actual paths to your files, respectively. Save the changes.

### Compile the Installer

1. Open NSIS.
2. Select the option "Compile NSI Scripts".
3. Drag and drop the file you just edited into the NSIS window.
4. An installer for your desired SSTools4MC release channel will be created.
5. Enjoy!

## Copyright and Disclaimer
**SSTools4MC and each of its tools are not official Minecraft products and are not endorsed by Mojang.**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (SSTools4MC), to use the software without restriction, including, but not limited to, the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software, and to permit persons to whom the software is furnished to do so, subject to the following conditions:

- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the software.

THE SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

"Minecraft" is a registered trademark of Mojang Synergies AB and is not affiliated with this software.

Oracle, Java, and MySQL are registered trademarks of Oracle and/or its affiliates. Other names may be trademarks of their respective owners.

This repository or its owner does not own or store any Mojang Synergies AB products, and the availability of these products is not dependent on him or this repository.

This repository or its owner does not own or store any Oracle products, and the availability of these products is not dependent on him or this repository.

All Mojang Synergies AB-related elements and names are used in compliance with the [Minecraft Commercial Usage Guidelines](https://www.minecraft.net/en-us/eula/) and [Brand and Asset Usage Guidelines](https://account.mojang.com/terms?ref=ft#brand).

All Oracle-related elements and names are used in compliance with the [Oracle Terms of Use](https://www.oracle.com/legal/terms.html) and [Trademarks](https://www.oracle.com/legal/trademarks.html).

## Credits and Acknowledgements

So many thanks to [@naicoooossj](https://github.com/naicoooossj) and [@LegalizeNuclearBombs](https://github.com/Bruno-Machuca) :shipit: for testing and giving new ideas to this project.

Credits to Alfredo Creates on Flaticon for creating the icons used in SSTools4MC: [(1)](https://www.flaticon.es/icono-gratis/juegos_10125663?term=minecraft&page=1&position=77&origin=tag&related_id=10125663) and [(2)](https://www.flaticon.es/icono-gratis/juego_10125654?related_id=10125654&origin=pack)- Both licensed under [CC 3.0 BY](https://creativecommons.org/licenses/by/3.0/)

Thank you for using SSTools4MC!

Licensed under [MIT License](https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE) - Copyright © 2025 ngdplnk

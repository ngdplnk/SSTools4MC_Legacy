# SSTools4MC - Server Startup Tools for Minecraft

SSTools4MC is a set of tools designed to assist you hosting your own dedicated Minecraft server.

## Table of Contents
- [Getting Started](#getting-started)
- [Installation](#installation)
  - [Minimum Requirements](#minimum-requirements)
  - [Python Installation and Required Modules](#python-installation-and-required-modules)
  - [Java Installation](#java-installation)
- [Build SSTools4MC Installer by yourself](#build-sstools4mc-installer-by-yourself)
  - [Clone this Repository](#clone-this-repository)
  - [Install NSIS](#install-nsis)
  - [Verify Files](#verify-files)
  - [Edit build.nsi file](#edit-buildnsi-file)
  - [Compile the Installer](#compile-the-installer)
- [Copyright and Disclaimer](#copyright-and-disclaimer)
- [Important and Acknowledgments](#important-and-acknowledgments)

## Getting Started
To get started with SSTools4MC, follow these steps:

1. Download the latest version of SSTools4MC from the [GitHub Releases](https://github.com/NGDPLNk/SSTools4MC/releases/latest) page.
2. Run the installer. A shortcut should be created on your desktop and in your Windows start menu.
3. Enjoy!

## Installation
### Minimum Requirements
- Operating System: Windows 10 (64-bit - Version 10.0.14393.6796) or newer. Windows 10 22H2 recommended.
- Processor: 2 cores at 1.00GHz; x64 architecture.
- RAM: At least 1GB.
- Disk Space: Varies depending on the server.
- Python: 3.9 or newer.

Administrator privileges are also required in old releases of SSTools4MC to access server files and folders.

### Python Installation and Required Modules
1. Download and install Python 3.9 or newer from the [official Python website](https://www.python.org/downloads/). When installing Python, be sure to select the "Add Python to PATH" option.
2. After you successfully installed Python with this option, open a command prompt, powershell or terminal with administrator privileges.
3. Install the required Python modules by running the following commands:
    ```bash
    pip install requests
    pip install termcolor
    ```

### Java Installation
1. Download the Java 22 installer from the [official Oracle website](https://www.oracle.com/cl/java/technologies/downloads/#jdk22-windows).
2. Run the installer and follow the on-screen instructions to install Java 22.
3. Verify the installation by opening a command prompt, powershell or terminal and running:
    ```bash
    java -version
    ```

If Java 22 is correctly installed, the command should display the installed Java version.

Java is necessary to your machine to be able to run your Minecraft servers.

## Build SSTools4MC Installer by yourself

Follow these steps to build the SSTools4MC installer from the source code by yourself.

### Clone this Repository

First, clone/download this repository:

```bash
git clone https://github.com/ngdplnk/SSTools4MC.git
```

### Install NSIS

You need to install the latest NSIS (Nullsoft Scriptable Install System) version to build the installer. You can download it from [NSIS Official Website](https://nsis.sourceforge.io/Download). Be sure to follow the on-screen instructions to complete the installation.

### Verify Files

Navigate to the `3 - launcher` folder in the cloned repository. Ensure that you have the following files (there may be more, but you need to have at least these):

- `build.nsi`
- `icon.ico`
- `launcher.pyw`

If any of these files are missing, please download them from the repository.

### Edit build.nsi File

Open the `build.nsi` file in a text editor and replace the placeholders `<TYPE THE ICON.ICO PATH HERE>` and `<TYPE THE LAUNCHER.PYW PATH HERE>` with the actual paths to your `icon.ico` and `launcher.pyw` files, respectively. Save the changes.

### Compile the Installer

1. Open NSIS.
2. Select the option "Compile NSIS Scripts".
3. Drag and drop the `build.nsi` file you just edited into the NSIS window.
4. An installer for the SSTools4MC program will be created.
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

## Important and Acknowledgments
- Administrator privileges are required in old releases of SSTools4MC in order to access server files and folders.
- Old releases of SSTools4MC and in some cases its installer, are detected as viruses. You can avoid this by allowing them in your antivirus. Dont worry, there are no viruses here. You can take a look to the source if you still don't believe it.

So many thanks to [@naicoooossj](https://github.com/naicoooossj) and [@LegalizeNuclearBombs](https://steamcommunity.com/id/LegalizeNucelarBombs/) :shipit: for testing and giving new ideas to this project.

Thank you for using SSTools4MC!

© 2024 - TLSoftware - NGDPL Nk
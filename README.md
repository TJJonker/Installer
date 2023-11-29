Project Overview: "Hello Installer"
Welcome to the "Hello Installer" project! 🚀

Introduction
This project serves as an instructive exploration into installer development. The primary objective is the creation of an executable designed to read a file and display its content. Complementing this functionality is the integration of an installer, meticulously crafted using the versatile NSIS (Nullsoft Scriptable Install System).

Prerequisites
Prior to commencing this endeavor, ensure the absence of spaces in the absolute path to the solution folder. Spaces in the path may introduce unforeseen complications.

Building the Project
Two command files stand at your disposal:

BuildDebug: Generates a Debug build without necessitating the opening of the solution in Visual Studio.
BuildRelease: Performs a similar function, tailored for Release mode.
Debug Build: Constructed without replicating the text file into the build folder, presenting an intriguing puzzle.

Release Build: This variant, replete with the text file and the elusive .nsi file, resides within the build folder. Locate this assembly within the 'bin' directory.

NSIS Integration
The .nsi file, akin to an artisan's script, awaits compilation within the NSIS compile tool. Witness its metamorphosis into a formidable installer.

Desktop Deployment
Launching the installer for the inaugural time instigates the creation of a Desktop entity—behold the 'Hello' folder! Within its precinct:

Hello.exe: The executable at the project's core.
Hello.txt: The enigmatic text file.
Hello_Uninstaller.exe: A potent tool for the reversal of the installation.
Choices Unveiled
A divergence in the narrative arises if the Desktop already hosts a 'Hello' folder. A mysterious window materializes, inquiring: "Overwrite or abstain?" The decision rests with you.

Overwrite: Witness the folder's rebirth, its contents ablaze.
Not Overwrite: A fleeting spectacle, a nod of acknowledgment, concluding with the installer's graceful exit.
Farewell Protocol
Uninstallation is a straightforward endeavor—execute the 'Hello_Uninstaller.exe,' and observe the unraveling of the enchantment.

Registry Manifest
Within the esoteric confines of the registry, the variable 'StudentNumber' in 'SOFTWARE\Configuration2023\Project4' undergoes modification upon installation, only to be expunged upon the subsequent uninstallation.

May your journey with the "Hello Installer" be as enthralling as the installer itself! 🌟
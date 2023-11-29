# Installer
This project serves as a hello world project into installer development. The primary objective is the creation of an executable designed to read a file and display its content. Complementing this functionality is the integration of an installer, created using NSIS (Nullsoft Scriptable Install System).

### Prerequisites
Before using this project, ensure there are no spaces in the absolute path to the solution folder. Spaces may cause undefined behavior when building the solution.

### Building the Project
Two command files have been provided for convenience:

- BuildDebug: Generates a Debug build without the need to open the solution in Visual Studio.
- BuildRelease: Performs a similar function, tailored for Release mode.
- Debug Build: Assembled without replicating the text file into the build folder, providing a distinct challenge.

Release Build: This refined variant, inclusive of the text file and the .nsi file, is located within the build folder, residing in the 'bin' directory.

### NSIS Integration
The .nsi file, analogous to a script, awaits compilation within the NSIS compile tool, resulting in the creation of an installer.

### Desktop Deployment
Initiating the installer prompts the creation of a Desktop directory named 'Hello.' Within this directory:

- Hello.exe: The foundational executable.
- Hello.txt: The associated text file.
- Hello_Uninstaller.exe: A utility for the orderly reversal of the installation.
 
### Overwriting
A divergence arises if the Desktop already hosts a 'Hello' folder. A window inquires: "Overwrite or abstain?" The decision rests with the user.

- Overwrite: Witness the folder's re-establishment, its contents replaced.
- Not Overwrite: A brief acknowledgment, concluding with the installer's graceful exit.

### Uninstalling
Uninstallation is straightforward—execute 'Hello_Uninstaller.exe' to observe the orderly unraveling of the installation.

### Registry Manifest
Within the registry, the variable 'StudentNumber' in 'SOFTWARE\Configuration2023\Project4' undergoes modification upon installation, only to be expunged during subsequent uninstallation.

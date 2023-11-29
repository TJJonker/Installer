# Define installer name
OutFile Hello_Installer.exe

# Set install directory
InstallDir $DESKTOP

# Section start
Section
    StrCpy $0 "$INSTDIR\Hello"

    #Specify output path
    IfFileExists $0 FolderExists FolderDoesNotExist

    FolderExists:
        # The folder already exists, prompt the user
        MessageBox MB_YESNO|MB_ICONQUESTION "The folder already exists. Do you want to overwrite it?" IDYES OverwriteFolder IDCANCEL DoNotOverwriteFolder

        DoNotOverwriteFolder:
            # User chose not to overwrite, abort installation
                MessageBox MB_ICONEXCLAMATION "Installation canceled. The folder will not be overwritten." /SD IDOK
                #Abort # Abort the installation process
                Quit # Terminate the installer

        OverwriteFolder:
            # User chose to overwrite, delete the existing folder and create a new one
            RMDir /r $0
            Goto FolderDoesNotExist

    FolderDoesNotExist:
        # Create new folder
        CreateDirectory $0
        SetOutPath $0

        # Add files
        File Hello.txt
        File Hello.exe

        WriteRegStr HKLM "SOFTWARE\Configuration2023\Project4" "StudentNumber" "1224457"

        # Add uninstaller
        WriteUninstaller "$0\Hello_Uninstaller.exe"

# End section
SectionEnd



# create a section to define what the uninstaller does.
# the section will always be named "Uninstall"
Section "Uninstall"
 
# Always delete uninstaller first
Delete "$INSTDIR\Hello_Uninstaller.exe"
 
# now delete installed file
Delete $INSTDIR\Hello.txt
Delete $INSTDIR\Hello.exe

DeleteRegKey HKLM "SOFTWARE\Wow6432Node\Configuration2023"
 
# Delete the directory
RMDir $INSTDIR
SectionEnd
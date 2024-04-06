Outfile "SSTools4MC_Launcher.exe"
SetCompressor /SOLID lzma

# Define the installation directory
InstallDir $APPDATA\TLSoftware\SSTools4MC

Section "MainSection" SEC01

  # Set the installer to close automatically when done
  SetAutoClose true

  # Define the directory for the program
  SetOutPath $APPDATA\TLSoftware\SSTools4MC

  # Copy the file
  File /oname=launcher.pyw "C:\Users\nicolas\Desktop\launcher.pyw"

  # Define the directory for the icon
  SetOutPath $APPDATA\TLSoftware\SSTools4MC\assets

  # Copy the file
  File /oname=icon.ico "C:\Users\nicolas\Desktop\icon.ico"

  # Create a desktop shortcut
  CreateShortCut "$DESKTOP\SSTools4MC Launcher.lnk" "$APPDATA\TLSoftware\SSTools4MC\launcher.pyw" "" "$APPDATA\TLSoftware\SSTools4MC\assets\icon.ico" 0

  # Create a Start Menu shortcut
  CreateShortCut "$SMPROGRAMS\SSTools4MC Launcher.lnk" "$APPDATA\TLSoftware\SSTools4MC\launcher.pyw" "" "$APPDATA\TLSoftware\SSTools4MC\assets\icon.ico" 0

  # Write the uninstall keys for Add/Remove Programs
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayName" "SSTools4MC Launcher"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "UninstallString" "$INSTDIR\uninstaller.exe"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "Publisher" "TLSoftware"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayVersion" "1.1"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayIcon" "$INSTDIR\assets\icon.ico"
  WriteUninstaller "$INSTDIR\uninstaller.exe"

SectionEnd

Section "Uninstall"

  # Set the uninstaller to close automatically when done
  SetAutoClose true

  # Remove the files
  Delete $APPDATA\TLSoftware\SSTools4MC\launcher.pyw
  Delete $APPDATA\TLSoftware\SSTools4MC\assets\icon.ico

  # Remove the shortcuts
  Delete "$DESKTOP\SSTools4MC Launcher.lnk"
  Delete "$SMPROGRAMS\SSTools4MC Launcher.lnk"

  # Remove the uninstaller
  Delete "$INSTDIR\uninstaller.exe"

  # Remove the uninstall keys
  DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC"

  # Remove the directories
  RMDir /r $APPDATA\TLSoftware\SSTools4MC\assets
  RMDir /r $APPDATA\TLSoftware\SSTools4MC

SectionEnd
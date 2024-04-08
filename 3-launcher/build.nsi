# FILL THIS WITH THE NEEDED PATHS
!define ICON_PATH "<TYPE THE ICON.ICO PATH HERE>"
!define LAUNCHER_PATH "<TYPE THE LAUNCHER.PYW PATH HERE>"
!define BASE_PATH "<TYPE THE BASE.PY PATH HERE>"

############################################################

Caption "SSTools4MC v1.1 Installer"
UninstallCaption "SSTools4MC Uninstaller"
!define APP_VERSION "1.1"
!define PRODUCT_VERSION "1.1.0.0"
!define APP_EDITOR "TLSoftware"

Outfile "SSTools4MC_Setup_v1.1.exe"
SetCompressor /SOLID lzma
Icon "${ICON_PATH}"

SilentInstall silent
SilentUninstall silent

VIProductVersion "${PRODUCT_VERSION}"
VIAddVersionKey "ProductName" "SSTools4MC Launcher"
VIAddVersionKey "CompanyName" "TLSoftware"
VIAddVersionKey "FileDescription" "SSTools4MC Launcher"
VIAddVersionKey "FileVersion" "${APP_VERSION}"
VIAddVersionKey "LegalCopyright" "Copyright (C) 2024 TLSoftware"
VIAddVersionKey "OriginalFilename" "SSTools4MC_Launcher.exe"
VIAddVersionKey "Comments" "Created by ${APP_EDITOR}"

# Define the installation directory
InstallDir $APPDATA\TLSoftware\SSTools4MC

Section "MainSection" SEC01

  # Set the installer to close automatically when done
  SetAutoClose true

  # Define the directory for the program
  SetOutPath $APPDATA\TLSoftware\SSTools4MC

  # Copy files
  File /oname=launcher.pyw "${LAUNCHER_PATH}"
  File /oname=main.py "${BASE_PATH}"

  # Define the directory for the icon
  SetOutPath $APPDATA\TLSoftware\SSTools4MC\assets

  # Copy the file
  File /oname=icon.ico "${ICON_PATH}"

  # Create a desktop shortcut
  CreateShortCut "$DESKTOP\SSTools4MC Launcher.lnk" "$APPDATA\TLSoftware\SSTools4MC\launcher.pyw" "" "$APPDATA\TLSoftware\SSTools4MC\assets\icon.ico" 0

  # Create a Start Menu shortcut
  CreateShortCut "$SMPROGRAMS\SSTools4MC Launcher.lnk" "$APPDATA\TLSoftware\SSTools4MC\launcher.pyw" "" "$APPDATA\TLSoftware\SSTools4MC\assets\icon.ico" 0

  # Write the uninstall keys for Add/Remove Programs
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayName" "SSTools4MC Launcher"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "UninstallString" "$INSTDIR\uninstaller.exe"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "Publisher" "TLSoftware"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayVersion" "${APP_VERSION}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC" "DisplayIcon" "$INSTDIR\assets\icon.ico"
  WriteUninstaller "$INSTDIR\uninstaller.exe"

  # Show a message when the program is completely installed
  MessageBox MB_YESNO|MB_ICONINFORMATION "SSTools has been completely installed. Do you want to open it now?" IDYES runProgram

  # Don't run the program if the user clicked "No"
  Goto end

  runProgram:
  # Run the program if the user clicked "Yes"
  ExecShell "" "$APPDATA\TLSoftware\SSTools4MC\launcher.pyw"

  end:

SectionEnd

Section "Uninstall"

  # Set the uninstaller to close automatically when done
  SetAutoClose true

  # Remove the files
  Delete $APPDATA\TLSoftware\SSTools4MC\launcher.pyw
  Delete $APPDATA\TLSoftware\SSTools4MC\main.py
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

  # Show a message when the program is completely uninstalled
  MessageBox MB_OK|MB_ICONINFORMATION "SSTools4MC has been completely uninstalled."

SectionEnd
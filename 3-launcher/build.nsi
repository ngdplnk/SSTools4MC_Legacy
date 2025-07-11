### THIS BUILD SCRIPT IS FOR SSTools4MC LEGACY

# FILL THIS WITH THE NEEDED PATHS
!define ICON_PATH "<TYPE THE ICON.ICO PATH HERE>"
!define LAUNCHER_PATH "<TYPE THE LAUNCHER.PYW PATH HERE>"
!define BASE_PATH "<TYPE THE MAIN.PY PATH HERE>"

############################################################

Caption "SSTools4MC Legacy Launcher v1.5 Installer"
UninstallCaption "SSTools4MC Legacy Uninstaller"
!define APP_VERSION "1.5"
!define PRODUCT_VERSION "1.5.0.0"
!define APP_EDITOR "ngdplnk"

Outfile "SSTools4MC_Legacy_Launcher_v1.5_Setup.exe"
SetCompressor /SOLID lzma
Icon "${ICON_PATH}"

SilentInstall silent
SilentUninstall silent

VIProductVersion "${PRODUCT_VERSION}"
VIAddVersionKey "ProductName" "SSTools4MC Legacy Launcher"
VIAddVersionKey "CompanyName" "ngdplnk"
VIAddVersionKey "FileDescription" "SSTools4MC Legacy Launcher"
VIAddVersionKey "FileVersion" "${APP_VERSION}"
VIAddVersionKey "LegalCopyright" "Copyright (C) 2025 ngdplnk"
VIAddVersionKey "OriginalFilename" "SSTools4MC_Legacy_Launcher.exe"
VIAddVersionKey "Comments" "Created by ${APP_EDITOR}"

# Define the installation directory
InstallDir $APPDATA\SSTools4MC_Legacy

Section "MainSection" SEC01

  # Set the installer to close automatically when done
  SetAutoClose true

  # Define the directory for the program
  SetOutPath $APPDATA\SSTools4MC_Legacy

  # Copy files
  File /oname=launcher.pyw "${LAUNCHER_PATH}"
  File /oname=main.py "${BASE_PATH}"

  # Define the directory for the icon
  SetOutPath $APPDATA\SSTools4MC_Legacy\assets

  # Copy the file
  File /oname=icon.ico "${ICON_PATH}"

  # Create a desktop shortcut
  CreateShortCut "$DESKTOP\SSTools4MC Legacy Launcher.lnk" "$APPDATA\SSTools4MC_Legacy\launcher.pyw" "" "$APPDATA\SSTools4MC_Legacy\assets\icon.ico" 0

  # Create a Start Menu shortcut
  CreateShortCut "$SMPROGRAMS\SSTools4MC Legacy Launcher.lnk" "$APPDATA\SSTools4MC_Legacy\launcher.pyw" "" "$APPDATA\SSTools4MC_Legacy\assets\icon.ico" 0

  # Write the uninstall keys for Add/Remove Programs
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy" "DisplayName" "SSTools4MC Legacy Launcher"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy" "UninstallString" "$INSTDIR\uninstaller.exe"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy" "Publisher" "ngdplnk"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy" "DisplayVersion" "${APP_VERSION}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy" "DisplayIcon" "$INSTDIR\assets\icon.ico"
  WriteUninstaller "$INSTDIR\uninstaller.exe"

  # Show a message when the program is completely installed
  MessageBox MB_YESNO|MB_ICONINFORMATION "SSTools4MC Legacy Launcher has been completely installed. Do you want to open it now?" IDYES runProgram

  # Don't run the program if the user clicked "No"
  Goto end

  runProgram:
  # Run the program if the user clicked "Yes"
  ExecShell "" "$APPDATA\SSTools4MC_Legacy\launcher.pyw"

  end:

SectionEnd

Section "Uninstall"

  # Set the uninstaller to close automatically when done
  SetAutoClose true

  # Remove the shortcuts
  Delete "$DESKTOP\SSTools4MC Legacy Launcher.lnk"
  Delete "$SMPROGRAMS\SSTools4MC Legacy Launcher.lnk"
  Delete "$DESKTOP\SSTools4MC Legacy Launcher (Dev Channel).lnk"
  Delete "$SMPROGRAMS\SSTools4MC Legacy Launcher (Dev Channel).lnk"

  # Remove the uninstaller
  Delete "$INSTDIR\uninstaller.exe"

  # Remove the uninstall keys
  DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\SSTools4MC_Legacy"

  # Remove all SSTools4MC files
  RMDir /r $APPDATA\SSTools4MC_Legacy

  # Show a message when the program is completely uninstalled
  MessageBox MB_OK|MB_ICONINFORMATION "SSTools4MC Legacyhas been completely uninstalled."

SectionEnd
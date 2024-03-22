Name "SSTools4MC v2.0"
OutFile "SSTools4MC_v2.0_ENG.exe"

!define SOURCE_DIR "$DESKTOP\serverlauncher\"

RequestExecutionLevel admin
Var SSToolsDir
InstallDir $DESKTOP

Page directory
Page instfiles

Function CreateSSToolsDir
    StrCpy $SSToolsDir "$InstDir\serverlauncher"
    CreateDirectory "$SSToolsDir"
FunctionEnd

Section "Your Program" SEC001
    Call CreateSSToolsDir
    SetOutPath $SSToolsDir
    File /r "*.*"

    CreateShortCut "$DESKTOP\Start Server.lnk" '"$InstDir\serverlauncher\Python311\pythonw.exe" "$InstDir\serverlauncher\main.pyw"'
SectionEnd

; Script created by SparrOSDeveloperTeam
;
; https://github.com/SparrOSDeveloperTeam

; Setup compiled in Inno Setup 1.3.26 Compiler

[Setup]
AppName=Qi120983 Update for ReactOS
AppVerName=ReactOS 0.4.x Update
AppCopyright=Copyright © 2018 SparrOSDeveloperTeam
DefaultDirName={pf}\Qi120983
DefaultGroupName=IExpress ReactOS
UninstallDisplayIcon=setup.ico
; MinVersion=4.0

[Files]
Source: "iexpress.exe"; DestDir: "{app}"
Source: "makecab.exe"; DestDir: "{app}"
Source: "msvcrt.dll"; DestDir: "{app}"
Source: "qi120983.iss"; DestDir: "{app}\Source"
Source: "Visit my Github.url"; DestDir: "{app}"
Source: "wextract.exe"; DestDir: "{app}"

[Icons]
Name: "{group}\IExpress 2.0 Setup"; Filename: "{app}\iexpress.exe"
Name: "{group}\Visit my Github"; Filename: "{app}\Visit my Github.url"
Name: "{group}\Uninstall"; Filename: "{app}\Unins000.exe"

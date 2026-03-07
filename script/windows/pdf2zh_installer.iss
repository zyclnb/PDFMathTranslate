#define MyAppName "PDFMathTranslate"
#ifndef MyAppVersion
  #define MyAppVersion "0.0.0"
#endif
#ifndef MyAppVersionInfo
  #define MyAppVersionInfo "0.0.0.0"
#endif
#ifndef MyAppPublisher
  #define MyAppPublisher "PDFMathTranslate Fork Maintainers"
#endif
#ifndef MyAppURL
  #define MyAppURL "https://github.com/Byaidu/PDFMathTranslate"
#endif
#ifndef MySourceDir
  #error MySourceDir is required (directory containing pdf2zh.exe and runtime files)
#endif
#ifndef MyOutputDir
  #define MyOutputDir "."
#endif

[Setup]
AppId={{9A6A58AF-3A10-4B84-B316-CA428E50D182}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE
OutputDir={#MyOutputDir}
OutputBaseFilename=PDFMathTranslate-Setup-win11-x64
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
WizardStyle=modern
VersionInfoVersion={#MyAppVersionInfo}
UninstallDisplayIcon={app}\pdf2zh.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimp"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MySourceDir}\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{autoprograms}\{#MyAppName}\启动 Web UI"; Filename: "{app}\pdf2zh.exe"; Parameters: "-i"; WorkingDir: "{app}"
Name: "{autoprograms}\{#MyAppName}\命令行工具"; Filename: "{app}\pdf2zh.exe"; WorkingDir: "{app}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\pdf2zh.exe"; Parameters: "-i"; WorkingDir: "{app}"; Tasks: desktopicon

[Run]
Filename: "{app}\pdf2zh.exe"; Parameters: "-i"; Description: "安装完成后立即启动 Web UI"; Flags: nowait postinstall skipifsilent

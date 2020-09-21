; ------------------------------------------
; Installer for HeliFlight Configurator
; ------------------------------------------
; It receives from the command line with /D the parameters: 
; version
; archName
; archAllowed
; archInstallIn64bit
; sourceFolder
; targetFolder

#define ApplicationName "HeliFlight Configurator"
#define CompanyName "The HeliFlight Open Source Project"
#define CompanyUrl "https://heliflight3d.com/"
#define ExecutableFileName "heliflight-configurator.exe"
#define GroupName "HeliFlight"
#define InstallerFileName "heliflight-configurator-installer_" + version + "_" + archName
#define SourcePath "..\..\" + sourceFolder + "\heliflight-configurator\" + archName
#define TargetFolderName "HeliFlight-Configurator"
#define UpdatesUrl "https://github.com/heliflight3d/hetaflight-configurator/releases"

[CustomMessages]
AppName=heliflight-configurator
LaunchProgram=Start {#ApplicationName}

[Files]
Source: "{#SourcePath}\*"; DestDir: "{app}"; Flags: recursesubdirs

[Icons]
; Programs group
Name: "{group}\{#ApplicationName}"; Filename: "{app}\{#ExecutableFileName}";
; Desktop icon
Name: "{autodesktop}\{#ApplicationName}"; Filename: "{app}\{#ExecutableFileName}"; 
; Non admin users, uninstall icon
Name: "{group}\Uninstall {#ApplicationName}"; Filename: "{uninstallexe}"; Check: not IsAdminInstallMode

[Languages]
; English default, it must be first
Name: "en"; MessagesFile: "compiler:Default.isl"
; Official languages
Name: "ca"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "ja"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nl"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "pt"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"
; Not official. Sometimes not updated to latest version (strings missing)
Name: "ga"; MessagesFile: "unofficial_inno_languages\Galician.isl"
Name: "eu"; MessagesFile: "unofficial_inno_languages\Basque.isl"
Name: "hr"; MessagesFile: "unofficial_inno_languages\Croatian.isl"
Name: "hu"; MessagesFile: "unofficial_inno_languages\Hungarian.isl"
Name: "id"; MessagesFile: "unofficial_inno_languages\Indonesian.isl"
Name: "ko"; MessagesFile: "unofficial_inno_languages\Korean.isl"
Name: "lv"; MessagesFile: "unofficial_inno_languages\Latvian.isl"
Name: "sv"; MessagesFile: "unofficial_inno_languages\Swedish.isl"
Name: "zh_CN"; MessagesFile: "unofficial_inno_languages\ChineseSimplified.isl"
Name: "zh_TW"; MessagesFile: "unofficial_inno_languages\ChineseTraditional.isl"
; Not available
; pt_BR (Portuguese Brasileiro)

[Run]
; Add a checkbox to start the app after installed
Filename: {app}\{cm:AppName}.exe; Description: {cm:LaunchProgram,{cm:AppName}}; Flags: nowait postinstall skipifsilent

[Setup]
AppId=e72c90bb-45eb-48dc-9cf3-ac2e8ec52f8c
AppName={#ApplicationName}
AppPublisher={#CompanyName}
AppPublisherURL={#CompanyUrl}
AppUpdatesURL={#UpdatesUrl}
AppVersion={#version}
ArchitecturesAllowed={#archAllowed}
ArchitecturesInstallIn64BitMode={#archInstallIn64bit}
Compression=lzma2
DefaultDirName={autopf}\{#GroupName}\{#TargetFolderName}
DefaultGroupName={#GroupName}\{#ApplicationName}
LicenseFile=..\..\LICENSE
OutputBaseFilename={#InstallerFileName}
OutputDir=..\..\{#targetFolder}\
PrivilegesRequiredOverridesAllowed=commandline dialog
SetupIconFile=hf_installer_icon.ico
ShowLanguageDialog=yes
SolidCompression=yes
UninstallDisplayIcon={app}\{#ExecutableFileName}
UninstallDisplayName={#ApplicationName}
WizardImageFile=hf_installer.bmp
WizardSmallImageFile=hf_installer_small.bmp
WizardStyle=modern


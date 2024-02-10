# Windows setup

## Winget

Winget is supported on Windows 10 1709 or later, usually it's already installed. Check installed version:

```powershell
winget --version
```

If Winget isn't available yet, force installation:

```powershell
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
```

## Windows Terminal

### Installation

Download Windows Terminal directly from [↗ Microsoft Store](https://apps.microsoft.com/detail/9N0DX20HK701?launch=true&mode=mini), or using [Winget](#winget).

Install the latest version:

```powershell
winget install 9N0DX20HK701
```

Check the version installed:

```powershell
wt --version
```

### Configuration

Restore configuration files:

```powershell
iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/WT/settings.json -OutFile $Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json; iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/WT/state.json -OutFile $Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\state.json
```

## PowerShell 5

### Prerequisite

The execution policy needs to be set in *Unrestricted* or *Remote-Signed* to be able to execute scripts. Check the current:

```powershell
Get-ExecutionPolicy
```

If necessary, change the execution policy:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Configuration

Restore profile and prompt script:

```powershell
iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/PS5/Microsoft.PowerShell_profile.ps1 -OutFile (ni $Profile -Force); iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/Scripts/Microsoft.PowerShell_prompt.ps1 -OutFile (ni $Home\Scripts\Microsoft.PowerShell_prompt.ps1 -Force)
```

Reopen the terminal to see changes, or source the profile:

```powershell
. $Profile
```

## Visual Studio Code

### Installation

Download Windows Terminal directly from [↗ Microsoft Store](https://apps.microsoft.com/detail/XP9KHM4BK9FZ7Q?launch=true&mode=mini), or using [Winget](#winget).

Install the latest version:

```powershell
winget install XP9KHM4BK9FZ7Q
```

Check the version installed:

```powershell
code --version
```

### Configuration

Restore configuration file and keybindings file:

```powershell
iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/VSC/settings.json -OutFile $Env:AppData\Code\User\settings.json; iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/VSC/keybindings.json -OutFile $Env:AppData\Code\User\keybindings.json
```

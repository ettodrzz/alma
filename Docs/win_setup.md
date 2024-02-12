# Windows setup

## Contents

- [Getting started](#getting-started)
- [Windows Terminal](#windows-terminal)
- [PowerShell 5](#powershell-5)
- [Visual Studio Code](#visual-studio-code)

## Getting started

This setup is for 64-bit Windows 10.

### WinGet

*Enables users to discover, install, upgrade, remove and configure applications on Windows 10 and Windows 11 computers. This tool is the client interface to the Windows Package Manager service*. [↗ WinGet documentation](https://learn.microsoft.com/en-us/windows/package-manager/winget/).

WinGet is supported on Windows 10 1709 or later, usually it's already installed. Check installed version:

```powershell
winget --version
```

If isn't available yet, install from [↗ Microsoft Store](https://apps.microsoft.com/detail/9NBLGGH4NNS1?launch=true&mode=mini).

## Windows Terminal

*It's a modern host application for the command-line shells, like Command Prompt, PowerShell, and Bash (via WSL). Its main features include multiple tabs, panes, Unicode and UTF-8 character support, a GPU accelerated text rendering engine, and the ability to create your own themes and customize text, colors, backgrounds, and shortcuts*. [↗ Windows Terminal documentation](https://learn.microsoft.com/en-us/windows/terminal/).

### Installation

Download Windows Terminal directly from [↗ Microsoft Store](https://apps.microsoft.com/detail/9N0DX20HK701?launch=true&mode=mini), or using [WinGet](#winget).

Install the latest version:

```powershell
winget install 9N0DX20HK701
```

Check the installed version:

```powershell
wt --version
```

### Configuration

Restore configuration files:

```powershell
iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/WT/settings.json -OutFile $Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json; iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/WT/state.json -OutFile $Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\state.json
```

## PowerShell 5

*It's a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework*. [↗ PowerShell documentation](https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-5.1).

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

To see changes, reopen the terminal or source the profile:

```powershell
. $Profile
```

## Visual Studio Code

*It's a lightweight but powerful source code editor. It comes with built-in support for JavaScript, TypeScript and Node.js and has a rich ecosystem of extensions for other languages and runtimes (such as C++, C#, Java, Python, PHP, Go, .NET)*. [↗ VSC documentation](https://code.visualstudio.com/docs).

### Installation

Download Windows Terminal directly from [↗ Microsoft Store](https://apps.microsoft.com/detail/XP9KHM4BK9FZ7Q?launch=true&mode=mini), or using [WinGet](#winget).

Install the latest version:

```powershell
winget install XP9KHM4BK9FZ7Q
```

Check the installed version:

```powershell
code --version
```

### Configuration

Restore configuration file and keybindings file:

```powershell
iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/VSC/settings.json -OutFile $Env:AppData\Code\User\settings.json; iwr https://raw.githubusercontent.com/ettodrzz/Alma/main/Windows/VSC/keybindings.json -OutFile $Env:AppData\Code\User\keybindings.json
```

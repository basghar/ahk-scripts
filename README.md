# My setup for using virtual desktops for development.
This script is designed to help manage virtual desktops in Windows using AutoHotkey and the Virtual Desktop Accessor DLL. It's a tool that I use to make my development life better by using virtual desktops and assigning shortcuts that allow me to quickly switch to any desktop with pre-arranged windows.

In my experience, this setup can be more efficient than using multiple monitors. It allows for a clean workspace with less physical and visual clutter, and it can be especially useful for those who work on laptops or have limited desk space.

## Setup

- Automatically creates 5 virtual desktops if they don't already exist.
- Sets custom names for each of the 5 desktops:
    - Desktop 0: "Main"
    - Desktop 1: "Development/Coding"
    - Desktop 2: "Communications"
    - Desktop 3: "Terminal/Settings"
    - Desktop 4: "Extra"
- Provides hotkeys to quickly switch between these desktops:
    - Ctrl+Alt+Shift+A: Switch to the "Main" desktop
    - Ctrl+Alt+Shift+D: Switch to the "Development/Coding" desktop
    - Ctrl+Alt+Shift+C: Switch to the "Communications" desktop
    - Ctrl+Alt+Shift+T: Switch to the "Terminal/Settings" desktop
    - Ctrl+Alt+Shift+X: Switch to the "Extra" desktop

> I also use PowerToys' Keyboard Manager to remap Win+D, for example, to Shift+Ctrl+Alt+D to avoid conflicting with Windows' default shortcuts.

## Requirements

- [AutoHotkey v2](https://github.com/AutoHotkey/AutoHotkey)
- [Virtual Desktop Accessor DLL](https://github.com/Ciantic/VirtualDesktopAccessor)

Please note that you need to replace `.\VirtualDesktopAccessor.dll` with the actual path of your `VirtualDesktopAccessor.dll` file in the script.

## Setup

A handy script has been prepared for the setup process. This script will install `AutoHotkey v2`, download the latest version of `VirtualDesktopAccessor.dll`, and execute the script.

To run the setup, use the following command:

```cmd
./setup.ps1
```
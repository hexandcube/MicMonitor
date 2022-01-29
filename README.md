![MicMonitor Icon](https://raw.githubusercontent.com/hexandcube/MicMonitor/master/MicMonitor.png)
# MicMonitor by Hexandcube

MicMonitor is a simple program written in Autohotkey that allows you to quickly toggle microphone monitoring in Windows ("Listen to this device" option in Control panel).

Tested on Windows 11 21H2 Build 22000, but should work also work on older versions of Windows.

The zip file contains the app installer that will automatically add the app to startup, and a standalone binary of the app.'

## Installation

[Download MicMonitor from GitHub](https://github.com/hexandcube/MicMonitor/releases) | [Download MicMonitor from Hexandcube.eu.org](https://hexandcube.eu.org/files/MicMonitor/)

#### Install using Chocolatey
```
choco install micmonitor 
```


## How to use

If you used the installer, MicMonitor will start automatically when you start your computer.

When you start MicMonitor for the first time, you will be asked to select a microphone you want to monitor.
The name of the device has to be the same as the one you see in the Settings app or in Control Panel. 

![Screenshot](https://i.imgur.com/tvQljCS.png)

The device name will be saved in the MicMonitor.ini file, in the same folder as the executable.

When MicMonitor is running, you will see a tray icon on the taskbar.

![Screenshot](https://i.imgur.com/QxYtgDa.png)

Double-click the tray icon to toggle microphone monitoring on the selected device.

To change the selected device, right-click the tray icon and click `Change device`.

![Screenshot](https://i.imgur.com/6ug5khU.png)

# Licenses

MicMonitor by Hexandcube is licensed under the [MIT license](https://github.com/hexandcube/MicMonitor/blob/master/LICENSE)

Microphone icon by [Icons8](https://icons8.com/).
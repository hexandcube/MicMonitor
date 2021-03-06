Menu, tray, NoStandard
Menu, Tray, Tip, MicMonitor
Menu, tray, Icon, MicMonitor.ico, 1
Menu, tray, Add, Toggle Microphone Monitoring, ToggleMicMonitoring
Menu, tray, Add, Change Device, UpdateConfig
Menu, tray, Add, About, DisplayAbout
Menu, tray, Add, Exit, EndScript
Menu, Tray, Default, Toggle Microphone Monitoring

ConfigFile = %A_WorkingDir%\MicMonitor.ini

if !FileExist(ConfigFile)
    UpdateConfig()

UpdateConfig() {
    global ConfigFile
    InputBox , MicName, Configure MicMonitor, Please enter the name of your Microphone device: ,, 300, 150
    if FileExist(ConfigFile)
        FileDelete , %ConfigFile%
    if (MicName)
        FileAppend , %MicName%, %ConfigFile%
}

DisplayAbout() {
	Gui, Add, Picture,w80 h80 Center, MicMonitor.ico
	Gui, font,bold
	Gui, Add, Text, Center x20, MicMonitor by Hexandcube
	Gui, font,
	Gui, Add, Text,, hexandcube@hexandcube.eu.org
	Gui, Add, Text,, https://hexandcube.eu.org
	Gui, Add, Text,, Version 1.1
	Gui, Add, Text,, 
	Gui, Add, Text,, Microphone icon by Icons8
	Gui, Show, w300 h250 center, About
}

ToggleMicMonitoring(){
    isExist:=WinExist("ahk_exe rundll32.exe ahk_class #32770")
    Run, % "rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,recording",,, uPID
    WinWait, % "ahk_pid"uPID,, 1

    WinWait,Sound

    Send {CTRL DOWN}{Down}{CTRL UP}

    ControlGet, List, List,, SysListView321, % "ahk_pid"uPID

    FileRead, OutputVar, MicMonitor.ini

    Loop, Parse, List, `n
    {
        IfInString, A_LoopField, %OutputVar%
        {
            ControlClick,&Properties
            Send {CTRL DOWN}{Tab}{CTRL UP}
            Send {Space}
            Send {Enter}
            break
        }
        else 
        {
            ControlSend,SysListView321,{Down}
        }
    }

    WinWait,Sound
    Send {Esc}
}

EndScript() {
    ExitApp
}
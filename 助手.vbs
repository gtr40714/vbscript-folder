dim wsh
set wsh=wscript.createobject("wscript.shell")
set wshshell=createobject("wscript.shell")
Function KillAll(ProcessName)
    on error resume next
    Dim objWMIService, colProcess
    Dim strComputer, strList, p
    Dim i :i= 0 
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2") 
    Set colProcess = objWMIService.ExecQuery ("Select * from Win32_Process Where Name like '" & ProcessName & "'")
    For Each p in colProcess
        p.Terminate     
    i = i+1        
    Next
End Function
Function dob()
	b=inputbox("enter the app name")
End Function
a=inputbox("1.kill app 2.shutdown 3.search ~use %20 displace space bar")
if a=1 then
dob()
KillAll(b)
elseif a=2 then
Dim a,b
set a= WScript.CreateObject("WScript.Shell")
wsh.Run"cmd /c shutdown -s -t 120 -c ""shutdown soon enter cancel to cancel"" ",0
do
b=InputBox("shutdown","cancel")
If b="cancel" Then
a.Run"cmd /c shutdown -a",0
MsgBox"succes stop shutdown"
Exit do
End If
loop
elseif a=3 then
wsh.run"d:\Desktop\goooglebat.bat",1,ture
else
End if

Select Case WScript.Arguments.Count
	Case 0
		' Default if none specified is local computer (".")
		Set objWMIService = GetObject( "winmgmts://./root/cimv2" )
		Set colItems = objWMIService.ExecQuery( "Select * from Win32_ComputerSystem", , 48 )
		For Each objItem in colItems
			strComputer = objItem.Name
		Next
	Case 1
		' Command line parameter can either be a computer
		' name or "/?" to request online help
		strComputer = UCase( Wscript.Arguments(0) )
		if InStr( strComputer, "?" ) > 0 Then Syntax
	Case Else
		' Maximum is 1 command line parameter
		Syntax
End Select

' Header line for screen output
strMsg = vbCrLf & "Video summary for your Computer:" & vbCrLf & vbCrLf

' Enable error handling
On Error Resume Next

' Connect to specified computer
Set objWMIService = GetObject( "winmgmts://" & strComputer & "/root/cimv2" )
' Display error number and description if applicable
If Err Then ShowError

' Query video adapter properties
Set colItems = objWMIService.ExecQuery( "Select * from Win32_VideoController", , 48 )
' Display error number and description if applicable
If Err Then ShowError

' Prepare display of results
For Each objItem in colItems
	strMsg = strMsg _
	       & "    Name:                    " _
	       & objItem.Name & vbCrLf _
	       & "    Description:             " _
	       & objItem.Description & vbCrLf _
	       & "    Video Processor:         " _
	       & objItem.VideoProcessor & vbCrLf _
	       & "    Adapter RAM:             " _
	       & Int( ( objItem.AdapterRAM + 524288 ) / 1048576 ) _
	       & " MB" & vbCrLf _
	       & "    Video Mode Description:  " _
	       & objItem.VideoModeDescription & vbCrLf & vbCrLf
Next

' Display results
WScript.Echo strMsg

'Done
WScript.Quit(0)


Sub ShowError()
	strMsg = vbCrLf & "Error # " & Err.Number & vbCrLf & _
	         Err.Description & vbCrLf & vbCrLf
	Syntax
End Sub


Sub Syntax()
	strMsg = strMsg & vbCrLf _
	       & "VideoROM.vbs,  Version 1.00" & vbCrLf _
	       & "Display video adapter summary for any WMI " _
	       & "enabled computer on the network" _
	       & vbCrLf & vbCrLf _
	       & "Usage:  CSCRIPT  VIDEOROM.VBS  [ computer_name ]" _
	       & vbCrLf & vbCrLf _
	       & "Where:  " & Chr(34) & "computer_name" & Chr(34) _
	       & " is the optional name of a remote" & vbCrLf _
	       & "        computer (default is local computer name)" _
	       & vbCrLf & vbCrLf _
	       & "Written by Rob van der Woude" & vbCrLf _
	       & "http://testerandtracker.webs.com" _
	       & vbCrLf & vbCrLf _
	       & "Created with Microsoft's Scriptomatic tool" & vbCrLf _
	       & "http://www.microsoft.com/technet/treeview/default.asp" _
	       & "?url=/technet/scriptcenter/WMImatic.asp" & vbCrLf
	WScript.Echo strMsg
	WScript.Quit(1)
End Sub

Wscript.Echo "This Make WarteX -- WartuneCompany"
Wscript.Echo "For More Information Ask Me On -- testerandtracker.webs.com"

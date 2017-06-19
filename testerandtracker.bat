@echo off

:: Developer:INFCommunity
:: All rights reserved!


:: Title

title Starting... 

:: /Title

:: Exist

start nircmd.exe speak text "Program starting, pelase wait" 

@echo [%date%] [%time%] "TesterAndTracker Checking Do All Stuffs Exist..." >> Log.txt

Echo [Info] Checking if exist nircmd.exe...
Echo [Info] Loading nircmd.exe...
ping 0.0.0.0 >nul
IF EXIST nircmd.exe (
@echo [%time%] [Info]  "nircmd.exe exist !." >> Log.txt
) ELSE (
@echo [%time%] [Error]  "nircmd.exe not exist !." >> Log.txt
@echo [%time%] [Error]  "Shuting down... !" >> Log.txt
exit
)

Echo [Info] Checking if exist Extension.exe...
Echo [Info] Loading Extension.exe...
ping 0.0.0.0 >nul
IF EXIST Extension.exe (
@echo [%time%] [Info] "Extension.exe exist !." >> Log.txt
) ELSE (
@echo [%time%] [Error]  "Extension.exe not exist !." >> Log.txt
@echo [%time%] [Error]  "Shuting down... !" >> Log.txt
exit
)

Echo [Info] Checking if exist Graphics.vbs...
Echo [Info] Loading Graphics.vbs...
ping 0.0.0.0 >nul
IF EXIST Graphics.vbs (
@echo [%time%] [Info]  "Graphics.vbs exist !." >> Log.txt
) ELSE (
@echo [%time%] [Error]  "Graphics.vbs not exist !." >> Log.txt
@echo [%time%] [Error]  "Shuting down... !" >> Log.txt
exit
)

Echo [Info] Checking if exist DimScreen.exe...
Echo [Info] Loading DimScreen.exe...
ping 0.0.0.0 >nul
IF EXIST DimScreen.exe (
@echo [%time%] [Info]  "DimScreen.exe exist !." >> Log.txt
) ELSE (
@echo [%time%] [Error]  "DimScreen.exe not exist !." >> Log.txt
@echo [%time%] [Error]  "Shuting down... !" >> Log.txt
exit
)

Echo [Info] Checking if exist DimScreen.ini...
Echo [Info] Loading DimScreen.ini...
ping 0.0.0.0 >nul
IF EXIST DimScreen.ini (
@echo [%time%] [Info]  "DimScreen.ini exist !." >> Log.txt
) ELSE (
@echo [%time%] [Error]  "DimScreen.ini not exist !." >> Log.txt
@echo [%time%] [Error]  "Shuting down... !" >> Log.txt
exit
)


@echo [Info] Loading Complete All Stuffs Exist.
@echo [Info] Starting...
ping 0.0.0.0 >nul


:: /Exist

:: Start

setlocal ENABLEDELAYEDEXPANSION

set speech=start nircmd.exe speak text
set regedit=start nircmd.exe elevatecmd runassystem c:\windows\regedit.exe 
set screenshor=start nircmd.exe cmdwait 2000 savescreenshot "sc.png" 
set bin=start nircmd.exe emptybin 
set clipbooard=start nircmd.exe clipboard clear 
set saveclipboard=start nircmd.exe clipboard addfile "info1.txt" 
set o=INF Developers Team

setlocal ENABLEDELAYEDEXPANSION

:: /Start

:: Version

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 95" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 95 & exit

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows NT 4.0" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows NT 4.0 & exit

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 98" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 98 & exit

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 2000" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 2000 & exit

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows ME" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows ME & exit

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows XP" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows XP

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows Vista" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows Vista

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 7" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 7

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 8.1" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 8.1

reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find "Windows 10" >nul
if "%ERRORLEVEL%" == "0" set SYSTEMID=Windows 10

::/Version

:: ERROR

SETLOCAL ENABLEDELAYEDEXPANSION

IF %ERRORLEVEL% EQU 0 SET INPUT=1 Level
IF %ERRORLEVEL% EQU 1 SET INPUT=2 Level
IF %ERRORLEVEL% EQU 2 SET INPUT=3 Level
IF %ERRORLEVEL% EQU 3 SET INPUT=4 Level
IF %ERRORLEVEL% EQU 4 SET INPUT=5 Level
IF %ERRORLEVEL% EQU 5 SET INPUT=6 Level & msg * This is critical error level, so in TAT dir you will find ErrorLevel-Fixer.exe ^|^ Run it and wait to fix all errorlevels. If that didnt help, then you should install new system. Thanks!

SETLOCAL
:: /ERROR

:: GUI

goto Menu
cls

:color
title Pick color and start
cls
echo ===============================================================
echo ^> Choose Color And Start.
echo ===============================================================
echo ^>^> Green
echo ^>^> Red
echo ^>^> Yellow
echo ^>^> Blue
echo ^>^> Grey
echo ^>^> Start/Menu
echo ===============================================================
set/p choice2="Choose Color:"
@echo [%time%] [Color] "%choice2%" >> Log.txt
if %choice2%==1 color 0a
if %choice2%==2 color c
if %choice2%==3 color E
if %choice2%==4 color 1F
if %choice2%==5 color 8
if %choice2%==6 goto Menu
if %choice2%==Start goto Menu
if %choice2%==start goto Menu
if %choice2%==7 Goto Exit
if %choice2%==Start goto Menu
if %choice2%==Menu goto Menu
if %choice2%==menu goto Menu
if %choice2%==Green color 0a
if %choice2%==Red color c
if %choice2%==Yellow color E
if %choice2%==Blue color 1F
if %choice2%==Grey color 8
if %choice2%==green color 0a
if %choice2%==red color c
if %choice2%==yellow color E
if %choice2%==blue color 1F
if %choice2%==grey color 8
if %choice2%=="" goto color
if %choice2%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul
if %choice2%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul 
if %choice2%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul
if %choice2%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul 
if %choice2%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul
if %choice2%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul 
if %choice2%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto color & ping 1.1.1.1 >nul
if not %choice2%==1 color 0a
if not %choice2%==2 color c
if not %choice2%==3 color E
if not %choice2%==4 color 1F
if not %choice2%==5 color 8
if not %choice2%==6 goto color
if not %choice2%==Start goto color
if not %choice2%==start goto color
if not %choice2%==7 Goto color
if not %choice2%==Start goto color
if not %choice2%==Menu goto color
if not %choice2%==menu goto color
if not %choice2%==Green goto color
if not %choice2%==Red goto color
if not %choice2%==Yellow goto color
if not %choice2%==Blue goto color
if not %choice2%==Grey goto color
if not %choice2%==green goto color
if not %choice2%==red goto color
if not %choice2%==yellow goto color
if not %choice2%==blue goto color
if not %choice2%==grey goto color
if not %choice2%=="" goto color
goto color

:Menu
title TesterAndTracker By %o% -- Widnows Version: %SYSTEMID%
cls
echo ===============================================================
echo ^> Developer: INF Developers
echo ===============================================================
echo ^> ErrorLevel: %input% -- Logged User: %USERNAME%
echo ===============================================================
echo ^>^> Cmd Menu  
echo ^>^> Tracert  
echo ^>^> Opener 
echo ^>^> Color Menu    
echo ^>^> Calculator       
echo ^>^> Speak Engine   
echo ^>^> Extension  
echo ^>^> CHKDSK
echo ^>^> Contact
echo ^>^> Taskkill
echo ^>^> Taskliss
echo ^>^> Dim Screen 
echo ^>^> Control Panel
echo ^>^> Twitch
echo ^>^> Help 
echo ^>^> Exit
echo ===============================================================
set/p choice="Command:"
@echo [%time%] [Command] "%choice%" >> Log.txt 
if %choice%==Login goto AdminName
if %choice%==Extension start Extension.exe & goto Menu
if %choice%==extension start Extension.exe & goto Menu
if %choice%==17 goto exit
if %choice%==16 goto Help
if %choice%==14 goto Computer
if %choice%==13 start DimScreen.exe & goto Menu
if %choice%==12 goto List
if %choice%==11 goto task
if %choice%==10 goto Contact
if %choice%==15 goto Twitch
if %choice%==9 goto CHKDSK
if %choice%==8 start Extension.exe & goto Menu
if %choice%==7 goto Speak
if %choice%==6 goto Calculator
if %choice%==5 goto Programs
if %choice%==4 goto Color
if %choice%==3 goto Opener
if %choice%==2 goto Tracert
if %choice%==1 goto Cmd
if %choice%==Twitch goto Twitch
if %choice%==twitch goto Twitch
if %choice%==Calculator goto Calculator
if %choice%==calculator goto Calculator
if %choice%==Computer goto Computer
if %choice%==computer goto Computer
if %choice%==Control goto Computer
if %choice%==Color goto Color
if %choice%==color goto Color
if %choice%==control goto Computer
if %choice%==Tracert goto Tracert
if %choice%==tracert goto Tracert
if %choice%==Panel goto Computer
if %choice%==panel goto Computer
if %choice%==Opener goto Opener
if %choice%==opener goto Opener
if %choice%==Contact goto Contact
if %choice%==contact goto Contact
if %choice%==CHKDSK goto CHKDSK
if %choice%==Taskkill goto task
if %choice%==taskkill goto task
if %choice%==Tasklist goto List
if %choice%==tasklist goto List
if %choice%==Speak goto Speak
if %choice%==speak goto Speak
if %choice%==Code goto Code
if %choice%==code goto Code
if %choice%==Cmd goto Cmd
if %choice%==cmd goto Cmd
if %choice%==Exit Goto Exit
if %choice%==exit Goto Exit
if %choice%==shutdown Goto Exit
if %choice%==Shutdown Goto Exit
if %choice%==Quit Goto Exit
if %choice%==quit Goto Exit
if %choice%==Help goto Help
if %choice%==help goto Help
if %choice%==cmd goto Cmd
if %choice%==Code goto Code
if %choice%==code goto Code
if %choice%=="" goto Menu
if %choice%==Dim start DimScreen.exe
if %choice%==dim start DimScreen.exe
if %choice%==Screen start DimScreen.exe
if %choice%==screen start DimScreen.exe
if %choice%==Dim stop goto Dim
if %choice%==Dim stop goto Dim
if %choice%==Dim Stop goto Dim
if %choice%==dim stop goto Dim
if %choice%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if not %choice%==dim goto Menu
if not %choice%==Extension goto Menu
if not %choice%==extension goto Menu
if not %choice%==17 goto Menu
if not %choice%==16 goto Menu
if not %choice%==15 goto Menu
if not %choice%==14 goto Menu
if not %choice%==13 goto Menu
if not %choice%==12 goto Menu
if not %choice%==11 goto Menu
if not %choice%==10 goto Menu
if not %choice%==9 goto Menu
if not %choice%==8 goto Menu
if not %choice%==7 goto Menu
if not %choice%==6 goto Menu
if not %choice%==5 goto Menu
if not %choice%==4 goto Menu
if not %choice%==3 goto Menu
if not %choice%==2 goto Menu
if not %choice%==1 goto Menu
if not %choice%==Calculator goto Menu
if not %choice%==calculator goto Menu
if not %choice%==Computer goto Menu
if not %choice%==computer goto Menu
if not %choice%==Control goto Menu
if not %choice%==Color goto Menu
if not %choice%==color goto Menu
if not %choice%==control goto Menu
if not %choice%==Tracert goto Menu
if not %choice%==tracert goto Menu
if not %choice%==Panel goto Menu
if not %choice%==panel goto Menu
if not %choice%==Opener goto Menu
if not %choice%==opener goto Menu
if not %choice%==Contact goto Menu
if not %choice%==contact goto Menu
if not %choice%==CHKDSK goto Menu
if not %choice%==Taskkill goto Menu
if not %choice%==taskkill goto Menu
if not %choice%==Tasklist goto Menu
if not %choice%==tasklist goto Menu
if not %choice%==Speak goto Menu
if not %choice%==speak goto Menu
if not %choice%==Code goto Menu
if not %choice%==code goto Menu
if not %choice%==Cmd goto Menu
if not %choice%==cmd goto Menu
if not %choice%==Exit Goto Menu
if not %choice%==exit Goto Menu
if not %choice%==shutdown Goto Menu
if not %choice%==Shutdown Goto Menu
if not %choice%==Quit Goto Menu
if not %choice%==quit Goto Menu
if not %choice%==Help goto Menu
if not %choice%==help goto Menu
if not %choice%==cmd goto Menu
if not %choice%==Code goto Menu
if not %choice%==code goto Menu
if not %choice%=="" goto Menu
if not %choice%==Dim goto Menu
if not %choice%==dim goto Menu
if not %choice%==Screen goto Menu
if not %choice%==screen goto Menu
if not %choice%==Dim stop goto Menu
if not %choice%==Dim stop goto Menu
if not %choice%==Dim Stop goto Menu
if not %choice%==Twitch goto Menu
if not %choice%==twitch goto Menu
goto Menu
:Exit

@echo [%time%] [Exit]    "Check us page testerandtarcker.bitballoon.com" >> Log.txt
@echo [%time%] [Exit]    "TesterAndTracker Thanks For Using !" >> Log.txt 
@echo [%time%] [Stoping] "TesterAndTracker Stoping..." >> Log.txt 
@echo [%time%] [Exit]    "TesterAndTracker Stoped" >> Log.txt

exit/b
:Dim
cls
taskkill /IM dimscreen.exe
goto Menu
:PC
cls
echo ===============================================================
echo ^> PC Cleanup Utility By %o%.
echo ===============================================================
echo ^> Select a tool.
echo ===============================================================
echo ^>^> Delete Internet Cookies
echo ^>^> Delete Temporary Internet Files
echo ^>^> Disk Cleanup
echo ^>^> Disk Defragment
echo ^>^> Menu
echo ===============================================================
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto Menu
if %op%==Internet goto 1
if %op%==Temorary goto 2
if %op%==Cleanup goto 3
if %op%==Defragment goto 4
if %op%==Menu goto Menu
if %op%==internet goto 1
if %op%==temorary goto 2
if %op%==cleanup goto 3
if %op%==defragment goto 4
if %op%==menu goto Menu
if %op%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %op%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if not %op%==1 goto PC
if not %op%==2 goto PC
if not %op%==3 goto PC
if not %op%==4 goto PC
if not %op%==5 goto PC
if not %op%==Internet goto PC
if not %op%==Temorary goto PC
if not %op%==Cleanup goto PC
if not %op%==Defragment goto PC
if not %op%==Menu goto PC
if not %op%==internet goto PC
if not %op%==temorary goto PC
if not %op%==cleanup goto PC
if not %op%==defragment goto PC
if not %op%==menu goto PC
goto PC
:1
cls
echo ===============================================================
echo ^> Delete Internet Cookies
echo ===============================================================
echo ^> Deleting Cookies...
echo ===============================================================
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo ===============================================================
echo ^> Delete Internet Cookies
echo ===============================================================
echo ^> Cookies deleted.
echo ===============================================================
pause >nul
goto PC
:2
cls
echo ===============================================================
echo ^> Delete Temporary Internet Files
echo ===============================================================
echo ^> Deleting Temporary Files...
echo ===============================================================
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo ===============================================================
echo ^> Delete Temporary Internet Files
echo ===============================================================
echo ^> Temporary Internet Files deleted.
echo ===============================================================
pause >nul
goto PC
:3
cls
echo ===============================================================
echo ^> Disk Cleanup
echo ===============================================================
echo ^> Running Disk Cleanup...
echo ===============================================================
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo ===============================================================
echo ^> Disk Cleanup
echo ===============================================================
echo ^> Disk Cleanup successful!
echo ===============================================================
pause >nul
goto PC
:4
cls
echo ===============================================================
echo ^> Disk Defragment
echo ===============================================================
echo ^> Defragmenting hard disks...
echo ===============================================================
ping localhost -n 3 >nul
defrag -c -v
cls
echo ===============================================================
echo ^> Disk Defragment
echo ===============================================================
echo ^> Disk Defrag successful!
echo ===============================================================
pause >nul
goto PC
:List
cls
tasklist /FI "CPUTIME gt 00:00:10" 
echo ============================================================================
pause >nul
goto Menu
:Help
cls
echo ===============================================================
echo ^> Commands For TAT.
echo ===============================================================
echo 1. For Cmd Menu Write:                       Cmd
echo 2. For Tracert Menu Write:                   Tracert
echo 3. For Opener Menu Write:                    Opener
echo 4. For Downoload Some Programs Write:        Programs
echo 5. To start Calculator Write:                Calculator
echo 6. To start Speak Engine Write:              Speak
echo 7. To start Extension Searcher Write:        Extension
echo 8. To open Open CD-Room Menu Write:          CD
echo 9. To start CHKDSK Write:                    CHKDSK
echo 10. To see Graphics Card Write:              Graphics
echo 11. To see Contact Write:                    Contact
echo 12. To Taskkill Write:                       Taskkill
echo 13. To see TaskList Write:                   Tasklist
echo 14. To start Control Panel Menu Write:       Control or Computer
echo 15. To exit Write:                           Exit or Quit
echo 16. For Help Write:                          Help
echo 17. For PC Clean UP Write:                   Clean or clean
echo ===============================================================
echo ^> Commands For TAT.
echo ===============================================================
pause >nul
goto Menu
:FireS
cls
net stop "MpsSvc"
taskkill /f /t /im "FirewallControlPanel.exe"
goto Computer
:FireStart
net start "MpsSvc"
goto Computer
:Computer
title TAT Control Panel By %o%
cls
echo ===============================================================
echo ^> Control Panel By %o%
echo ===============================================================
echo ^>^> ShutDown (This is force Shutdown)
echo ^>^> Log Off (This is force Log Off)
echo ^>^> Restart (This is force Restart)
echo ^>^> User
echo ^>^> Disable Firewall
echo ^>^> Enable Firewall
echo ^>^> Homepage
echo ^>^> Processor Usage 
echo ^>^> PC Clean UP
echo ^>^> Graphic Card
echo ^>^> Menu
echo ===============================================================
set/p comp="Choose:"
if %comp%==Graphics start Graphics.vbs & goto Computer
if %comp%==graphics start Graphics.vbs & goto Computer
if %comp%==Graphic start Graphics.vbs & goto Computer
if %comp%==graphic start Graphics.vbs & goto Computer
if %comp%==GPU start Graphics.vbs & goto Computer
if %comp%==gpu start Graphics.vbs & goto Computer
if %comp%==Menu goto Menu
if %comp%==menu goto Menu
if %comp%==User goto UserPanel
if %comp%==user goto UserPanel
if %comp%==Shutdown goto shutdown
if %comp%==shutdown goto shutdown
if %comp%==Log goto log
if %comp%==log goto log
if %comp%==Log Off goto log
if %comp%==log Off goto log
if %comp%==log off goto log
if %comp%==Enable goto FireStart
if %comp%==enable goto FireStart
if %comp%==Disable goto FireS
if %comp%==disable goto FireS
if %comp%==Homepage goto Homepage
if %comp%==homepage goto Homepage
if %comp%==Processor goto Processor
if %comp%==processor goto Processor
if %comp%==Clean goto PC
if %comp%==clean goto PC
if %comp%==Restart goto Restart
if %comp%==restart goto Restart
if %comp%==1 goto shutdown
if %comp%==2 goto log
if %comp%==3 goto Restart
if %comp%==4 goto UserPanel
if %comp%==5 goto FireS
if %comp%==6 goto FireStart
if %comp%==7 goto Homepage
if %comp%==8 goto Processor
if %comp%==9 goto PC
if %comp%==10 start Graphics.vbs & goto Computer
if %comp%==11 goto Menu
if %comp%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %comp%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if not %comp%==Graphics goto Computer
if not %comp%==graphics goto Computer
if not %comp%==Graphic goto Computer
if not %comp%==graphic goto Computer
if not %comp%==GPU goto Computer
if not %comp%==gpu goto Computer
if not %comp%==Menu goto Computer
if not %comp%==menu goto Computer
if not %comp%==User goto Computer
if not %comp%==user goto Computer
if not %comp%==Shutdown goto Computer
if not %comp%==shutdown goto Computer
if not %comp%==Log goto Computer
if not %comp%==log goto Computer
if not %comp%==Log Off goto Computer
if not %comp%==log Off goto Computer
if not %comp%==log off goto Computer
if not %comp%==Enable goto Computer
if not %comp%==enable goto Computer
if not %comp%==Disable goto Computer
if not %comp%==disable goto Computer
if not %comp%==Homepage goto Computer
if not %comp%==homepage goto Computer
if not %comp%==Processor goto Computer
if not %comp%==processor goto Computer
if not %comp%==Clean goto Computer
if not %comp%==clean goto Computer
if not %comp%==Restart goto Computer
if not %comp%==restart goto Computer
if not %comp%==1 goto Computer
if not %comp%==2 goto Computer
if not %comp%==3 goto Computer
if not %comp%==4 goto Computer
if not %comp%==5 goto Computer
if not %comp%==6 goto Computer
if not %comp%==7 goto Computer
if not %comp%==8 goto Computer
if not %comp%==9 goto Computer
if not %comp%==10 goto Computer
if not %comp%==11 goto Computer
goto PC
:Restart
@shutdown -f -r
:Processor
cls
@echo off
set totalMem=
set availableMem=
set usedMem=
for /f "tokens=4" %%a in ('systeminfo ^| findstr Physical') do if defined totalMem (set availableMem=%%a) else (set totalMem=%%a)
set totalMem=%totalMem:,=%
set availableMem=%availableMem:,=%
set /a usedMem=totalMem-availableMem
echo ===============================================================
Echo ^> Total Memory: %totalMem%
Echo ^> Used Memory: %usedMem%
Echo ^> Avaible Memory: %availableMem%
echo ===============================================================
pause >nul
goto Computer
:shutdown
@shutdown -f -s -t 10 -c "This shutdown was by %USERNAME%. If you want to abort, goto Cmd.exe and write 'shutdown -a'"
:log
@shutdown -f -l
:UserPanel
cls
echo ===============================================================
echo ^> Choose user account type.
echo ===============================================================
echo ^>^> Administrator (Not RECOMENDED !)
echo ^>^> Normal (Recomended)
echo ^>^> Change Password
echo ===============================================================
set/p an="Choose:"
if %an%==Menu goto Menu
if %an%==Administrator goto Admin
if %an%==Normal goto Nor
if %an%==Change goto Password
if %an%==1 goto Admin
if %an%==2 goto Nor
if %an%==3 goto Password
if not %an%==Menu goto UserPanel
if not %an%==Administrator goto UserPanel
if not %an%==Normal goto UserPanel
if not %an%==Change goto UserPanel
if not %an%==1 goto UserPanel
if not %an%==2 goto UserPanel
if not %an%==3 goto UserPanel
if not %an%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %an%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
:Admin
cls
echo ===============================================================
echo ^> If you create this you will make Admin account with all
echo ^> privileges. If you dont want to create just write Menu
echo ===============================================================
set/p name="Name:"
if %name%==Menu goto Menu
if %name%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
echo.
echo ===============================================================
echo ^> Set Password.
echo ===============================================================
set/p pass="Password:"
if %pass%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
net user %name% %pass% /add
net localgroup administrators %name% /add
pause >nul
goto Admin
:Nor
cls
echo ===============================================================
echo ^> This account dont have all permissions and options.
echo ===============================================================
set/p name="Name:"
if %name%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %name%==Menu goto Menu
echo.
echo ===============================================================
echo ^> Set Password.
echo ===============================================================
set/p pass="Password:"
if %pass%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %pass%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
net user %name% %pass% /add
pause >nul
goto Admin
:Homepage
cls
echo ===============================================================
echo ^> This is Homepage changer. Just write site and that site will
echo ^> be your first page when you start default browser.
echo ^> Write Menu if you dont want to change.
echo ===============================================================
set/p home="Homepage:"
if %home%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu & ping 1.1.1.1 >nul
if %home%==Menu goto Menu
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "START PAGE" /d "%home%"
pause >nul
goto Homepage
:Password
title Password Changer By %o%
cls
echo ===============================================================
echo ^> This is password changer, please be careful !
echo ^> This password changer will change User Password !
echo ^> if you dont know what is this write Menu !
echo ^> Just type password, then log out, and login with your new pass
echo ===============================================================
set/p pass="password"
if %pass%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %pass%==Menu goto Menu
net user %username% %pass%
pause >nul
goto Password
:task
title Task Killer By %o%
cls
echo ===============================================================
echo ^> Enter process name, and TAT will kill him.
echo ^> But, if that process was System, TAT will not kill.
echo ^> This is not force killing !
echo ^> That process must be started by USER !
echo ===============================================================
set/p sys="Process Name:"
if %sys%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %sys%==Menu goto Menu
@taskkill /IM %sys%
pause >nul
goto task
:Cmd
cls
echo ===============================================================
echo ^> CMD Menu By %o%
echo ===============================================================
echo ^> All NetStat result was saved in your install directory
echo ===============================================================
echo (1) NetStat A
echo (2) NetStat N
echo (3) NetStat E S
echo (4) NetStat R
echo (5) Tree (C:\,D:\)
echo (6) First Menu
echo ===============================================================
set /p choice="Choice:"
if %choice%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==1 @netstat -a > NetStat -a.txt & goto Cmd
if %choice%==2 @netstat -n > NetStat -n.txt & goto Cmd
if %choice%==3 @netstat -e -s > NetStat -e -s.txt & goto Cmd
if %choice%==4 @netstat -r> NetStat -r.txt & goto Cmd
if %choice%==5 goto tre
if %choice%==6 goto Menu
if not %choice%==1 @netstat -a > NetStat -a.txt & goto Cmd
if not %choice%==2 @netstat -n > NetStat -n.txt & goto Cmd
if not %choice%==3 @netstat -e -s > NetStat -e -s.txt & goto Cmd
if not %choice%==4 @netstat -r> NetStat -r.txt & goto Cmd
if not %choice%==5 goto tre
if not %choice%==6 goto Menu
goto ERROR
:tre
cls
msg * Tree result Was Saved In Your Install Directory
echo ===============================================================
echo ^> This Tree Menu Was Maked By %o%
echo ===============================================================
echo ^> This Tree Result Will Be Saved In C:\
echo ===============================================================
echo (1) C:\
echo (2) D:\
echo (3) First Menu
echo ===============================================================
set /p choice="Chosse:"
if %choice%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==1 @tree C:\ > C:\Result1.txt & goto M
if %choice%==2 @tree D:\ > C:\Result2.txt & goto M
if %choice%==3 goto Menu
if not %choice%==1 goto tre
if not %choice%==2 goto tre
if not %choice%==3 goto tre
goto ERROR
:Tracert
cls
msg * Every Tracert Site Was Saved in InstallDir/SiteTracert.txt
echo ===============================================================
echo ^> Tracert Menu By %o%
echo ===============================================================
echo (1) Track www.google.com
echo (2) Track www.facebook.com
echo (3) Track www.twitter.com
echo (4) Track www.youtube.com
echo (5) First Menu
echo ===============================================================
set /p choice="Choice:"
if %choice%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==1 @tracert www.google.com > GoogleTacert.txt & goto Tracert
if %choice%==2 @tracert www.facebook.com > FacbookTacert.txt & goto Tracert
if %choice%==3 @tracert www.twitter.com > TwitterTacert.txt & goto Tracert
if %choice%==4 @tracert www.youtube.com > YoutubeTacert.txt & goto Tracert
if %choice%==5 goto Menu
if not %choice%==1 goto Tracert
if not %choice%==2 goto Tracert
if not %choice%==3 goto Tracert
if not %choice%==4 goto Tracert
if not %choice%==5 goto Tracert
goto Tracert
:Contact
cls
echo ===============================================================
echo ^> Contact %o% On:
echo ^> Visit testerandtracker.ml
echo ^> TeamSpeak 3 IP: ts3infected.ddns.net
echo ===============================================================
pause >nul
goto Menu
:Opener
cls
echo ===============================================================
echo ^> Opener Pro By %o%
echo ===============================================================
echo ^> Version Pro
echo ===============================================================
echo ^> This Application is for running some programs and stuffs
echo ^> Choose Option And ENJOJ
echo ===============================================================
echo (1) Notepad
echo (2) Task Manager
echo (3) Google Chrome
echo (4) Cmd
echo (5) WinRAR
echo (6) RegEdit
echo (7) dxdiag
echo (8) Notepad++
echo (11) Internet Explorer
echo (12) Edit.com (CMD like notepad "Great")
echo (13) Go To Frst Menu
echo ===============================================================
set/p choice="Choose:"
if %choice%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %choice%==1 start notepad.exe & goto Menu
if %choice%==2 start taskmgr.exe & goto Menu
if %choice%==3 start chrome.exe & goto Menu
if %choice%==4 start cmd.exe & goto Menu
if %choice%==5 start WinRAR.exe & goto Menu
if %choice%==6 start regedit & goto Menu
if %choice%==7 start dxdiag & goto Menu
if %choice%==8 start notepad++.exe & goto Menu
if %choice%==11 start IEXPLORER.Exe & goto Menu
if %choice%==12 start Edit.com & goto Menu
if %choice%==Notepad start notepad.exe & goto Menu
if %choice%==taskmgr start taskmgr.exe & goto Menu
if %choice%==Chrome start chrome.exe & goto Menu
if %choice%==cmd start cmd.exe & goto Menu
if %choice%==WinRAR start WinRAR.exe & goto Menu
if %choice%==Regedit start regedit & goto Menu
if %choice%==dxdiag start dxdiag & goto Menu
if %choice%==notepad++ start notepad++.exe & goto Menu
if %choice%==Internet start IEXPLORER.Exe & goto Menu
if %choice%==Edit.com start Edit.com & goto Menu
if %choice%==13 goto Menu
if %choice%==Menu goto Menu
if not %choice%==1 goto Opener-
if not %choice%==2 goto Opener
if not %choice%==3 goto Opener
if not %choice%==4 goto Opener
if not %choice%==5 goto Opener
if not %choice%==6 goto Opener
if not %choice%==7 goto Opener
if not %choice%==8 goto Opener
if not %choice%==11 goto Opener
if not %choice%==12 goto Opener
if not %choice%==Notepad goto Opener
if not %choice%==taskmgr goto Opener
if not %choice%==Chrome goto Opener
if not %choice%==cmd goto Opener
if not %choice%==WinRAR goto Opener
if not %choice%==Regedit goto Opener
if not %choice%==dxdiag goto Opener
if not %choice%==notepad++ goto Opener
if not %choice%==Internet goto Opener
if not %choice%==Edit.com  goto Opener
if not %choice%==13 goto Opener
if not %choice%==Menu goto Opener
goto Opener
:Calculator
cls
echo ===============================================================
ECHO This Calculator Was Maked By %o%
ECHO ===============================================================
ECHO Last Result = %UDefine%
ECHO ===============================================================
SET /p UDefine="Choose Number:"
if %UDefine%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %UDefine%==1 goto Menu
if %UDefine%==Menu goto Menu
if %UDefine%==Stop goto Menu
if not %UDefine%==1 goto Calculator
if not %UDefine%==Menu goto Calculator
if not %UDefine%==Stop goto Calculator
SET /a UDefine=%UDefine%
goto Calculator
:Speak
cls
echo ===============================================================
echo ^> This Engine Was Edited By %o%
echo ===============================================================
echo ^> Last Speech %speechinput%
echo ===============================================================
set /p speechinput="Type A Text To Speak:"
if %speechinput%==set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==Set %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==SEt %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==SET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==SeT %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==sET %speech% "ACCES DENIED YOU ARE NOT ADMIN FOR THIS COMMAND" & goto Menu
if %speechinput%==stop goto Menu
if %speechinput%==Menu goto Menu
if not %speechinput%==stop goto Speak
if not %speechinput%==Menu goto Speak
%speech% "%speechinput%"
goto Speak
:CHKDSK
cls
echo ===============================================================
echo ^> CHKDSK Option (check disk)
echo ^> When start CHKDSK you must wait about 10 minutes.
echo ^> You will see how bytes in your txt have more.
echo ===============================================================
ping 1.1.1.1 >nul
@chkdsk >> CHKDSK.txt
echo ===============================================================
echo ^> DONE Your CHKDSK results was saved in TAT instalation dir.
echo ===============================================================
pause >nul
goto Menu

:: Twitch

:Twitch
cls
msg * Check if you have VLC Media Player, without it Livesteram WONT WORK. Also you must have Livestream.
echo ===============================================================
echo Quality can be:
echo audio, high, low, medium, mobile (worst), source (best)
echo ===============================================================
SET /P dir=Directory Of Livestreamer.exe:
echo.
SET /P url=Please enter the twitch.tv username:
echo.
SET /P quality=Please enter the quality:
echo.
SET /P videoID=Please enter the video ID or live for livestream:
echo ===============================================================
cls
if %dir%==Menu goto Menu
if %url%==Menu goto Menu
if %quality%==Menu goto Menu
if %videoID%==Menu goto Menu
if %dir%==menu goto Menu
if %url%==menu goto Menu
if %quality%==menu goto Menu
if %videoID%==menu goto Menu
cd %dir%
IF %videoID%==live (
    livestreamer.exe twitch.tv/%url% %quality%
) ELSE (
    livestreamer.exe twitch.tv/%url%/v/%videoID% %quality%
)
goto Twitch

:: /Twitch

:: AdminGUI

:AdminName
cls
echo ===============================================================
echo Admin Login!
echo ===============================================================
set /p pass_="Password:"
if %pass_%==testerandtracker goto AdminGUI
if not %pass_%==testerandtracker goto AdminName
cls
:AdminGUI
cls
echo ===============================================================
echo This is AdminGUI and you have all Admin commandes.
echo ===============================================================
echo ^>^> Run RegEdit with full access.
echo ^>^> Take ScreenShot (You must wait 2 seconds)
echo ^>^> Empty Recycle Bin.
echo ^>^> Delete clipboard.
echo ^>^> Save all from ClipBoard
echo ^>^> Enable ScreenSaver
echo ^>^> Disable ScreenSaver
echo ^>^> Find specify regkey
echo ^>^> Kill IExplorer
echo ^>^> Menu
echo ===============================================================
set /p admingui="Command:"
if %admingui%==regedit start nircmd.exe elevatecmd runassystem c:\windows\regedit.exe & goto AdminGUI
if %admingui%==screenshot start nircmd.exe cmdwait 2000 savescreenshot "sc.png" & goto AdminGUI
if %admingui%==emptybin start nircmd.exe emptybin & goto AdminGUI
if %admingui%==empty start nircmd.exe emptybin  & goto AdminGUI
if %admingui%==delete nircmd.exe clipboard clear & goto AdminGUI
if %admingui%==enable nircmd.exe regsetval sz "HKCU\control panel\desktop" "ScreenSaveActive" 1 & goto AdminGUI
if %admingui%==disable nircmd.exe regsetval sz "HKCU\control panel\desktop" "ScreenSaveActive" 0 & goto AdminGUI
if %admingui%==find nircmd.exe regedit "HKLM\Software\Microsoft\Windows\CurrentVersion" "CommonFilesDir" & goto AdminGUI
if %admingui%==kill start nircmd.exe win close class "IEFrame" & goto AdminGUI
if %admingui%==take start nircmd.exe cmdwait 2000 savescreenshot "sc.png" & goto AdminGUI
if %admingui%==save start nircmd.exe clipboard addfile "info1.txt" & goto AdminGUI
if %admingui%==Menu goto Menu
if %admingui%==menu goto Menu
if not %admingui%==regedit goto AdminGUI
if not %admingui%==screenshot goto AdminGUI
if not %admingui%==emptybin goto AdminGUI
if not %admingui%==empty goto AdminGUI
if not %admingui%==delte goto AdminGUI
if not %admingui%==enable goto AdminGUI
if not %admingui%==disable goto AdminGUI
if not %admingui%==find goto AdminGUI
if not %admingui%==kill goto AdminGUI
if not %admingui%==take goto AdminGUI
if not %admingui%==save goto AdminGUI
if not %admingui%==Menu goto AdminGUI
if not %admingui%==menu goto AdminGUI
goto AdminGUI

:: /AdminGUI

:: /GUI

:: Engine2

:video
setlocal
wmic /namespace:\\root\cimv2 path Win32_VideoController get Caption, Description, DriverVersion, InstalledDisplayDrivers, Name, PNPDeviceID, Status, StatusInfo, ConfigManagerErrorCode /value
endlocal
:video2
setlocal
wmic /namespace:\\root\cimv2 path Win32_VideoController get Caption /value
endlocal
:memory
setlocal
FOR /F "TOKENS=2 DELIMS==" %%A IN ('wmic memorychip GET Capacity /VALUE 2^>nul') DO CALL :memInstall %%A
set memInst=%SLO1%
FOR /F "TOKENS=2 DELIMS==" %%A IN ('wmic computersystem get TotalPhysicalMemory /VALUE') DO CALL :memCalc %%A
set memAvail=%RETURN%
FOR /F "TOKENS=2 DELIMS==" %%A IN ('wmic os get FreePhysicalMemory /VALUE') DO set memFree=%%A
set /A memFree=%memFree:~0,-1%/1024

FOR /F "TOKENS=2 DELIMS==" %%A IN ('wmic pagefile get AllocatedBaseSize /VALUE') DO set virtAlloc=%%A
FOR /F "TOKENS=2 DELIMS==" %%A IN ('wmic os get FreeVirtualMemory /VALUE') DO set virtFree=%%A
set /A virtFree=%virtFree:~0,-1%/1024

echo Physical memory: %memInst% MB installed, %memAvail% MB available, %memFree% MB free
echo Virtual  memory: %virtAlloc% MB allocated, %virtFree% MB free
enlocal
@echo off
chcp 65001
cd dependencies
color 4
cls
title MULTITOOL by Ryan Razzin
:menu
cls
echo.
echo ===================================================================[]
echo 1.  Check System Info           24. PowerShell                     []
echo 2.  List Files in Directory     25. Windows Defender               []
echo 3.  Launch Remote Desktop       26. Windows Security               [] 
echo 4.  Gmail                       27. File Explorer                  []
echo 5.  Control Panel               28. Windows Firewall               [] 
echo 6.  Task Manager                29. Windows Settings               [] 
echo 7.  Disk Management             30. Disk Cleanup                   [] 
echo 8.  Device Manager              31. System Restore                 []       =========
echo 9.  Notepad                     32. Task Scheduler                 []    ====Made By====
echo 10. Browse Apps Folder          33. Resource Monitor               []       =========
echo 11. Event Viewer                34. Windows Event Viewer           []     +++++++++++++
echo 12. Services                    35. Windows Memory Diagnostic      []   +++Ryan Razzin+++
echo 13. Registry Editor             36. Windows Updates                []     +++++++++++++
echo 14. Windows Update              37. Run Windows Troubleshooter     [] 
echo 15. Performance Monitor         38. Bluetooth Settings             [] 
echo 16. Snipping Tool               39. Network Settings               [] 
echo 17. Calculator                  40. System Configuration           [] 
echo 18. Paint                       41. Program and Features           []
echo 19. Internet Explorer           42. Windows Power Options          []
echo 20. Microsoft Edge              43. Task View                      []
echo 21. Command Prompt              44. Device Installation Settings   []
echo 22. Windows Update Settings     45. Check Disk Utility             []
echo 23. System Properties           46. Computer Management            []
echo                         47.Quit                                    []
echo ===================================================================[]
echo.                                                                                                       
set /p choice=Please select an option above: 

if %choice%==1 goto sysinfo
if %choice%==2 goto listfiles
if %choice%==3 goto rdp
if %choice%==4 goto gmail
if %choice%==5 goto controlpanel
if %choice%==6 goto taskmanager
if %choice%==7 goto diskmanagement
if %choice%==8 goto devicemanager
if %choice%==9 goto notepad
if %choice%==10 goto browsefolder
if %choice%==11 goto eventviewer
if %choice%==12 goto services
if %choice%==13 goto regedit
if %choice%==14 goto windowsupdate
if %choice%==15 goto perfmon
if %choice%==16 goto snippingtool
if %choice%==17 goto calculator
if %choice%==18 goto paint
if %choice%==19 goto ie
if %choice%==20 goto edge
if %choice%==21 goto cmd
if %choice%==22 goto windowsupdatesettings
if %choice%==23 goto systemproperties
if %choice%==24 goto powershell
if %choice%==25 goto defender
if %choice%==26 goto windowssecurity
if %choice%==27 goto explorer
if %choice%==28 goto firewall
if %choice%==29 goto settings
if %choice%==30 goto cleanup
if %choice%==31 goto restore
if %choice%==32 goto taskscheduler
if %choice%==33 goto resmon
if %choice%==34 goto windowseventviewer
if %choice%==35 goto windowsmemorydiag
if %choice%==36 goto windowsupdates
if %choice%==37 goto troubleshooter
if %choice%==38 goto bluetoothsettings
if %choice%==39 goto networksettings
if %choice%==40 goto msconfig
if %choice%==41 goto programfeatures
if %choice%==42 goto poweroptions
if %choice%==43 goto taskview
if %choice%==44 goto deviceinstallation
if %choice%==45 goto chkdsk
if %choice%==46 goto computermanagement
if %choice%==47 goto close
goto menu

:sysinfo
cls
echo ==== System Info ====
systeminfo
pause
goto menu

:listfiles
cls
echo ==== List Files in Directory ====
set /p dir=Enter directory path:
if exist "%dir%" (
    dir "%dir%"
) else (
    echo Directory does not exist!
)
pause
goto menu

:rdp
cls
echo ==== Launching Remote Desktop ====
start mstsc
pause
goto menu

:gmail
cls
echo ==== Opening Gmail ====
start https://mail.google.com
pause
goto menu

:controlpanel
cls
echo ==== Opening Control Panel ====
start control
pause
goto menu

:taskmanager
cls
echo ==== Opening Task Manager ====
start taskmgr
pause
goto menu

:diskmanagement
cls
echo ==== Opening Disk Management ====
start diskmgmt.msc
pause
goto menu

:devicemanager
cls
echo ==== Opening Device Manager ====
start devmgmt.msc
pause
goto menu

:notepad
cls
echo ==== Opening Notepad ====
start notepad.exe
pause
goto menu

:browsefolder
cls
echo ==== Browse Apps Folder ====
set /p appfolder=Enter folder path:
if exist "%appfolder%" (
    for %%f in ("%appfolder%\*.exe") do (
        echo Launching %%f
        start "" "%%f"
    )
) else (
    echo Folder does not exist!
)
pause
goto menu

:eventviewer
cls
echo ==== Opening Event Viewer ====
start eventvwr
pause
goto menu

:services
cls
echo ==== Opening Services ====
start services.msc
pause
goto menu

:regedit
cls
echo ==== Opening Registry Editor ====
start regedit
pause
goto menu

:windowsupdate
cls
echo ==== Opening Windows Update ====
start ms-settings:windowsupdate
pause
goto menu

:perfmon
cls
echo ==== Opening Performance Monitor ====
start perfmon
pause
goto menu

:snippingtool
cls
echo ==== Opening Snipping Tool ====
start snippingtool
pause
goto menu

:calculator
cls
echo ==== Opening Calculator ====
start calc
pause
goto menu

:paint
cls
echo ==== Opening Paint ====
start mspaint
pause
goto menu

:ie
cls
echo ==== Opening Internet Explorer ====
start iexplore
pause
goto menu

:edge
cls
echo ==== Opening Microsoft Edge ====
start msedge
pause
goto menu

:cmd
cls
echo ==== Opening Command Prompt ====
start cmd
pause
goto menu

:powershell
cls
echo ==== Opening PowerShell ====
start powershell
pause
goto menu

:defender
cls
echo ==== Opening Windows Defender ====
start windowsdefender://
pause
goto menu

:windowssecurity
cls
echo ==== Opening Windows Security ====
start windowsdefender:
pause
goto menu

:explorer
cls
echo ==== Opening File Explorer ====
start explorer
pause
goto menu

:firewall
cls
echo ==== Opening Windows Firewall ====
start wf.msc
pause
goto menu

:settings
cls
echo ==== Opening Windows Settings ====
start ms-settings:
pause
goto menu

:cleanup
cls
echo ==== Opening Disk Cleanup ====
start cleanmgr
pause
goto menu

:restore
cls
echo ==== Opening System Restore ====
start rstrui
pause
goto menu

:taskscheduler
cls
echo ==== Opening Task Scheduler ====
start taskschd.msc
pause
goto menu

:resmon
cls
echo ==== Opening Resource Monitor ====
start resmon
pause
goto menu

:windowseventviewer
cls
echo ==== Opening Windows Event Viewer ====
start eventvwr.msc
pause
goto menu

:windowsmemorydiag
cls
echo ==== Opening Windows Memory Diagnostic ====
start mdsched.exe
pause
goto menu

:windowsupdates
cls
echo ==== Opening Windows Updates ====
start ms-settings:windowsupdate
pause
goto menu

:troubleshooter
cls
echo ==== Running Windows Troubleshooter ====
msdt.exe /id MaintenanceDiagnostic
pause
goto menu

:bluetoothsettings
cls
echo ==== Opening Bluetooth Settings ====
start ms-settings:bluetooth
pause
goto menu

:networksettings
cls
echo ==== Opening Network Settings ====
start ms-settings:network
pause
goto menu

:msconfig
cls
echo ==== Opening System Configuration ====
start msconfig
pause
goto menu

:programfeatures
cls
echo ==== Opening Program and Features ====
start appwiz.cpl
pause
goto menu

:poweroptions
cls
echo ==== Opening Windows Power Options ====
start powercfg.cpl
pause
goto menu

:taskview
cls
echo ==== Opening Task View ====
start taskmgr /2
pause
goto menu

:deviceinstallation
cls
echo ==== Opening Device Installation Settings ====
start msdt.exe /id DeviceDiagnostic
pause
goto menu

:chkdsk
cls
echo ==== Running Check Disk Utility ====
start cmd /c chkdsk
pause
goto menu

:computermanagement
cls
echo ==== Opening Computer Management ====
start compmgmt.msc
pause
goto menu

:close
exit

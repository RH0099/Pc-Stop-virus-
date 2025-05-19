@echo off
:: System Virus Cleaner Script
:: Removes the lock and restores the system

:: Remove the scheduled task
schtasks /delete /tn "SystemBlocker" /f

:: Delete the blocker file
del %windir%\System32\_block.bat /f

:: Restart explorer UI
start explorer.exe

echo.
echo ================================
echo ✅ Virus removed successfully!
echo Your system is now fully restored.
echo ================================
pause

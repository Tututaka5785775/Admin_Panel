@echo off

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Pleas Run Admin Panel V17.34.24.0 as Administator.
    pause
    exit
)

setlocal enabledelayedexpansion
title Admin Panel V17.34.24.0
cls

echo Start Admin Panel V17.34.24.0 ? (Yes = Enter)
pause >nul


cls
echo [  OK  ] Kernel modules loaded.
echo [  OK  ] Root access granted.
echo [  OK  ] Initializing RAMdisk...
timeout /t 1 >nul
echo [  OK  ] Loading kernel ...
timeout /t 1 >nul
echo [  OK  ] Checking hardware entropy...
echo [  OK  ] Mounting /dev/nvme0n1p2 on / (ext4)...
echo [  OK  ] Starting systemd-udevd...
timeout /t 1 >nul
echo [  OK  ] Activating swap /dev/nvme0n1p3...
echo [  OK  ] Mounting /dev/sda1 on /root...
echo [  OK  ] Setting up networking interface...
timeout /t 1 >nul
echo [  OK  ] Reaching target Local File Systems...
echo [  OK  ] Initializing ZSH/Bash interface...
echo [  OK  ] Starting Network Configuration...
echo [  OK  ] System privileges escalated to: root
echo [  OK  ] Power sequence initiated...
echo [  OK  ] BIOS integrity check passed.
echo [  OK  ] Loading microcode updates...
echo [  OK  ] Verifying secure boot signatures...
echo [  OK  ] Allocating virtual memory...
echo [  OK  ] Mounting primary filesystem...
echo [  OK  ] USB controllers initialized.
echo [  OK  ] GPU driver loaded successfully.
echo [  OK  ] Enabling hardware acceleration...
echo [  OK  ] Calibrating inputs...
echo [  OK  ] Loading kernel extensions...
echo [  OK  ] Activating process scheduler...
echo [  OK  ] Launching system services...
echo [  OK  ] Network stack initialized.
echo [  OK  ] DHCP request sent...
echo [  OK  ] IP address assigned.
echo [  OK  ] DNS resolver configured.
echo [  OK  ] Firewall rules applied.
echo [  OK  ] Opening secure channels...
echo [  OK  ] Checking background services...
echo [  OK  ] Input devices connected.
echo [  OK  ] Keyboard layout loaded.
echo [  OK  ] Mouse driver calibrated.
echo [  OK  ] Shell environment configured.
echo [  OK  ] PATH variables calibrated.
echo [  OK  ] Initializing terminal session...
echo [  OK  ] Loading aliases...
echo [  OK  ] Cryptographic services ready.
echo [  OK  ] Entropy pool filled.
echo [  OK  ] Performance counters enabled.
echo [  OK  ] Disk I/O scheduler optimized.
echo [  OK  ] Swap usage optimized.
echo [  OK  ] Idle states configured.
echo [  OK  ] Background tasks scheduled.
echo [  OK  ] Hypervisor handshake complete.
echo [  OK  ] Sync service started.
echo [  OK  ] Updating package lists...
echo [  OK  ] Checking for updates...
echo [  OK  ] System up to date.
echo [  OK  ] Cleaning temporary files...
echo [  OK  ] Boot sequence finalized.
timeout /t 1 >nul
echo [  OK  ] Welcome to the system.
echo .

:TERMINAL
set "input="
set /p input="[root@root ~]# "

if "%input%"=="" goto TERMINAL
if "%input%"=="cls" cls & goto TERMINAL
if "%input%"=="clear" cls & goto TERMINAL
if "%input%"=="exit" exit


if "%input%"=="ls" dir /w & goto TERMINAL
if "%input%"=="ll" dir & goto TERMINAL
if "%input%"=="la" dir /a & goto TERMINAL
if "%input%"=="pwd" cd & goto TERMINAL
if "%input%"=="pwd.." cd.. & goto TERMINAL
if "%input%"=="whoami" echo root & goto TERMINAL
if "%input%"=="ifconfig" ipconfig & goto TERMINAL
if "%input%"=="ip addr" ipconfig & goto TERMINAL
if "%input%"=="ping" ping & goto TERMINAL
if "%input%"=="top" tasklist & goto TERMINAL
if "%input%"=="htop" tasklist & goto TERMINAL
if "%input%"=="ps" tasklist & goto TERMINAL
if "%input%"=="kill" taskkill /f /im & echo Usage: kill [process_name] & goto TERMINAL
if "%input%"=="rm" del & echo Usage: rm [file] & goto TERMINAL
if "%input%"=="mkdir" mkdir & goto TERMINAL
if "%input%"=="cp" copy & goto TERMINAL
if "%input%"=="mv" move & goto TERMINAL
if "%input%"=="cat" type & goto TERMINAL
if "%input%"=="grep" findstr & goto TERMINAL
if "%input%"=="df" wmic logicaldisk get size,freespace,caption & goto TERMINAL
if "%input%"=="free" systeminfo | findstr /C:"Memory" & goto TERMINAL
if "%input%"=="uname -a" echo Linux 6.8.1-linux1-1 #1 SMP PREEMPT_DYNAMIC x86_64 GNU/Linux & goto TERMINAL
if "%input%"=="reboot" shutdown /r /t 0 & goto TERMINAL
if "%input%"=="poweroff" shutdown /s /t 0 & goto TERMINAL
if "%input%"=="neofetch" echo Linux OS ^| Kernel: 6.8.1 ^| Shell: Bash ^| Uptime: 0m & goto TERMINAL
if "%input%"=="pacman -Syu" echo [UPDATING SYSTEM...] & timeout /t 2 >nul & echo [COMPLETE] & goto TERMINAL

%input% 2>nul || echo bash: %input%: command not found
echo.
goto TERMINAL
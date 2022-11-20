:: Created by ThatDavidHD
:: https://github.com/ThatDavidHD/Discord-Uninstaller-Windows
@echo off
title Discord Uninstaller for Windows
cls
color b
echo.
echo        ___   ___  ___   ___   ___   ___  ___
echo       ^|   \ ^|_ _^|/ __^| / __^| / _ \ ^| _ \^|   \
echo       ^| ^|^) ^| ^| ^| \__ \^| ^(__ ^| ^(_^) ^|^|   /^| ^|^) ^|
echo       ^|___/ ^|___^|^|___/ \___^| \___/ ^|_^|_\^|___/
echo        _   _  _  _  ___  _  _  ___  _____  ___  _     _     ___  ___
echo       ^| ^| ^| ^|^| \^| ^|^|_ _^|^| \^| ^|/ __^|^|_   _^|/   \^| ^|   ^| ^|   ^| __^|^| _ \
echo       ^| ^|_^| ^|^| .  ^| ^| ^| ^| .  ^|\__ \  ^| ^|  ^| - ^|^| ^|__ ^| ^|__ ^| _^| ^|   /
echo        \___/ ^|_^|\_^|^|___^|^|_^|\_^|^|___/  ^|_^|  ^|_^|_^|^|____^|^|____^|^|___^|^|_^|_\
echo.
echo       Uninstalling...
(
    powershell "Start-Process -FilePath "%localappdata%\Discord\update.exe" -ArgumentList "--uninstall,-s" -Wait"
    reg delete "HKCU\SOFTWARE\Discord" /f
    reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Discord" /f
    reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Discord" /f
    rd /s /q "%localappdata%\Discord"
    rd /s /q "%appdata%\discord"
    rd /s /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Discord Inc"
    del /f /q "%userprofile%\Desktop\Discord.lnk"
) >nul 2>nul
cls
color a
echo.
echo        ___   ___  ___   ___   ___   ___  ___
echo       ^|   \ ^|_ _^|/ __^| / __^| / _ \ ^| _ \^|   \
echo       ^| ^|^) ^| ^| ^| \__ \^| ^(__ ^| ^(_^) ^|^|   /^| ^|^) ^|
echo       ^|___/ ^|___^|^|___/ \___^| \___/ ^|_^|_\^|___/
echo        _   _  _  _  ___  _  _  ___  _____  ___  _     _     ___  ___
echo       ^| ^| ^| ^|^| \^| ^|^|_ _^|^| \^| ^|/ __^|^|_   _^|/   \^| ^|   ^| ^|   ^| __^|^| _ \
echo       ^| ^|_^| ^|^| .  ^| ^| ^| ^| .  ^|\__ \  ^| ^|  ^| - ^|^| ^|__ ^| ^|__ ^| _^| ^|   /
echo        \___/ ^|_^|\_^|^|___^|^|_^|\_^|^|___/  ^|_^|  ^|_^|_^|^|____^|^|____^|^|___^|^|_^|_\
echo.
echo       Successfully uninstalled Discord!
echo.
echo       Press any key to exit . . . 
pause >nul
exit
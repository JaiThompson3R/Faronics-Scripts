@echo off
powershell.exe -NoProfile -ExecutionPolicy bypass -command ECHO Y REG DELETE 'HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate'
gpupdate /force

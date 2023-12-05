@echo off
reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
gpupdate /force

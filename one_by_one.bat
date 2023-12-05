@echo off
powershell start-process powershell -verb runas -ArgumentList
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name ConfigureAutoMaticUpdates -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AutoInstallMinorUpdates -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name DetectionFrequencyEnabled -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name DetectionFrequency -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AlwaysAutoRebootAtScheduledTime -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AlwaysAutoRebootAtScheduledTimeMinutes -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name RescheduleWaitTimeEnabled -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AutomaticMaintenanceEnabled -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name ScheduledInstallDay -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name ScheduledInstallTime -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name ScheduledInstallEveryWeek -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AllowMUUpdateService -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AUOptions -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name AutoInstallMinorUpdates -Value 0"
powershell -command "Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate\AU -Name NoAutoUpdate -Value 0"
gpupdate /force
exit

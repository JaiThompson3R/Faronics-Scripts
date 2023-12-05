PS> Start-Process powershell -Verb RunAs
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name ConfigureAutoMaticUpdates -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AutoInstallMinorUpdates -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name DetectionFrequencyEnabled -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name DetectionFrequency -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AlwaysAutoRebootAtScheduledTime -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AlwaysAutoRebootAtScheduledTimeMinutes -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name RescheduleWaitTimeEnabled -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AutomaticMaintenanceEnabled -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name ScheduledInstallDay -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name ScheduledInstallTime -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name ScheduledInstallEveryWeek -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AllowMUUpdateService -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AUOptions -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name AutoInstallMinorUpdates -Value 0
Set-ItemProperty -Path HKLM:\Software\policies\microsoft\Windows\WindowsUpdate -Name NoAutoUpdate -Value 0
gpupdate /force
Restart-service -name "Windows Update"

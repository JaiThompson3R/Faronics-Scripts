if (Test-Path -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate") {
    Remove-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Recurse
}
else {
    Write-host "The Specified Registry Key doesn't exists!"
}

gpupdate /force

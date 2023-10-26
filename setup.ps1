$ahkPath = "${env:LOCALAPPDATA}\\Programs\\AutoHotkey\\v2\\AutoHotkey64.exe"
if (!(Test-Path -Path $ahkPath)) {
    Write-Host "AutoHotkey is not installed. Installing now..."
    Invoke-Expression -Command "winget install --id=AutoHotkey.AutoHotkey"
}
else {
    Write-Host "AutoHotkey is already installed."
}

$dllPath = ".\\VirtualDesktopAccessor.dll"
if (!(Test-Path -Path $dllPath)) {
    Write-Host "VirtualDesktopAccessor.dll does not exist. Downloading now..."
    $url = "https://github.com/Ciantic/VirtualDesktopAccessor/releases/latest/download/VirtualDesktopAccessor.dll"
    Invoke-WebRequest -Uri $url -OutFile $dllPath
}
else {
    Write-Host "VirtualDesktopAccessor.dll already exists."
}

$scriptPath = ".\\vd.ahk"

Write-Host "Running the vd.ahk script..."
Start-Process -FilePath $ahkPath -ArgumentList $scriptPath

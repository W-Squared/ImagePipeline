## Install Chocolatey
try {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
Catch [Exception] {
    Write-Output $_.Exception.Message "Error Installing Chocolatey"
    Break 
}

# Install useful ASDK Host Apps via Chocolatey
Set-ExecutionPolicy Unrestricted -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Enable Choco Global Confirmation
Write-host "Enabling global confirmation to streamline installs"
choco feature enable -n allowGlobalConfirmation

# Visual Studio Code
Write-host "Installing VS Code with Chocolatey"
choco install visualstudiocode

# Putty
Write-host "Installing Putty with Chocolatey"
choco install putty.install

# WinSCP
Write-host "Installing WinSCP with Chocolatey"
choco install winscp.install 

# Chrome
Write-host "Installing Chrome with Chocolatey"
choco install googlechrome

# Azure CLI
Write-host "Installing latest version of Azure CLI"
invoke-webrequest https://aka.ms/InstallAzureCliWindows -OutFile C:\AzureCLI.msi
msiexec.exe /qb-! /i C:\AzureCli.msi

Write-host "Setting Execution Policy back to RemoteSigned"
Set-ExecutionPolicy RemoteSigned -Confirm:$false -Force
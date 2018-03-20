    # Variables
    $Uri = 'https://raw.githubusercontent.com/mattmcspirit/azurestack/master/powershell/DevOpsToolkit.ps1'
    $LocalPath = 'c:\DevOpsToolkit'

    # Create folder
    New-Item $LocalPath -Type directory

    # Download file
    Invoke-WebRequest $uri -OutFile ($LocalPath + '\' + 'DevOpsToolkit.ps1')
    Set-Location $LocalPath

    .\DevOpsToolkit.ps1 -azureDirectoryTenantName maslab10.onmicrosoft.com -authenticationType AzureAD
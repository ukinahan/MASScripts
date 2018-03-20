#Register with Azure 

#1 - Run this first, login into Azure with the creds that you want to use to register the stack with in Azure (Azure Credentials)
Add-AzureRmAccount -EnvironmentName "AzureCloud"

#2 - Paste the subscription GUID ID below
Get-AzureRmSubscription -SubscriptionID '494b1ae1-78a5-4372-919c-a3d90db0ac1b' | Select-AzureRmSubscription

#3 - Run the remainder of this script
Register-AzureRmResourceProvider -ProviderNamespace Microsoft.AzureStack

Import-Module .\RegisterWithAzure.psm1

$AzureContext = Get-AzureRmContext
$CloudAdminCred = Get-Credential -UserName AZURESTACK\CloudAdmin -Message "Enter the cloud domain credentials to access the privileged endpoint"
Set-AzsRegistration `
    -CloudAdminCredential $CloudAdminCred `
    -PrivilegedEndpoint AzS-ERCS01 `
    -BillingModel Development
# MASScripts
Azure Stack Post Install Scripts

You can execute the the files here in a post install of a Azure Stack ASDK to install PowerShell, Install Azure Stack Tools and Register the ASDK with your Azure Subscription so that you can access the marketplace. 

Add a copy of CONFIGASDK.ps1 created by Alain Vetier which is a great script for complete costomization of a ASDK post install. This will likley require updates in order to stay in sync with Microsoft updates. 
    This includes :        
    - Set password expiration        
    - Disable windows update on all infrastructures VMs and ASDK host        
    - Tools installation (git, azstools, Azure Stack PS module)        
    - Windows Server 2016 and Ubuntu 16.04-LTS images installation        
    - Creates VM scale set gallery item        
    - MySQL Resource Provider Installation        
    - SQL Resource Provider Installation        
    - Deployment of a MySQL 5.7 hosting Server on Windows Server 2016 Core        
    - Deployment of a SQL 2014 hosting server on Windows 2016        
    - AppService prerequisites installation (sql server and file server)        
    - AppService Resource Provider sources download and certificates generation        
    - Set new default Quotas for Compute, Network, Storage and keyvault        
    - install usefull ASDK Host apps via Chocolatery (Visual Studio Code - putty - WinSCP - Chrome - Azure CLI

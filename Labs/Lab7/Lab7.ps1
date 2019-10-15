Find-Module Carbon | Install-Module # Finds the Carbon module and installs it 

Import-Module Carbon # Imports the Carbon module for use

# Obtains system level information about Google Chrome
Write-Host("Example 1 (Get-CProgramInstallInfo 'Google Chrome' | Select-Object *): ") 
Get-CProgramInstallInfo 'Google Chrome' | Select-Object *

# Creates a new credential called test with the password of Pa$$w0rd
Write-Host('Example 2 (New-Credential -UserName "test" -Password "Pa$$w0rd"):')
New-Credential -UserName 'test' -Password 'Pa$$w0rd'

# Obtains infomation on all users on the machine
Write-Host('Example 3 (Get-User):')
Get-User
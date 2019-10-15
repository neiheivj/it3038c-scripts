Find-Module Carbon | Install-Module
Import-Module Carbon
Write-Host("Example 1 (Get-CProgramInstallInfo 'Google Chrome' | Select-Object *): ")
Get-CProgramInstallInfo 'Google Chrome' | Select-Object *
Write-Host('Example 2 (New-Credential -UserName "test" -Password "Pa$$w0rd"):')
New-Credential -UserName 'test' -Password 'Pa$$w0rd'
Write-Host('Example 3 (Get-User):')
Get-User
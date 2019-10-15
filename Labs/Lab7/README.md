Lab7
=========

The goal of this script is to show off 3 features that the Carbon module can do. Example 1 goes over the command (Get-CProgramInstallInfo). This command is used for obtaining system level info on an installed program. Example two goes over the command (New-Credential). This command is used to add a new set of credentials with the given username and password. There are many other settings you can change using this setting but to keep things clean and simple these will be the only two referenced. Finnaly, Example 3 will go over the command (Get-User). This command will gather system level infomation over all the accounts currently on the machine. 

# Prerequisites for running the script:

	1) Install the "Carbon" module.

	Command:    Find-Module Carbon | Install-Module

    2) Verify that Google Chrome is installed. If not install it using your prefered method.

    3) Download the script to the machine.

# Running the script 

    1) Once you have the script downloaded all you need to do is double click the script to run it or copy the content into powershell ISE and click the green play button.  

# Expected Output Example 

    Example 1 (Get-CProgramInstallInfo 'Google Chrome' | Select-Object *):

    Contact          :
    Comments         :
    DisplayName      : Google Chrome
    DisplayVersion   : 77.0.3865.120
    EstimatedSize    : 0
    ProductCode      : 00000000-0000-0000-0000-000000000000
    HelpLink         :
    HelpTelephone    :
    InstallDate      : 10/14/2019 12:00:00 AM
    InstallLocation  : C:\Program Files (x86)\Google\Chrome\Application
    InstallSource    :
    Language         : 0
    ModifyPath       :
    Key              : HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome
    Path             :
    Publisher        : Google LLC
    Readme           :
    Size             :
    UninstallString  : "C:\Program Files (x86)\Google\Chrome\Application\77.0.3865.120\Installer\setup.exe" --uninstall --system-level --verbose-logging
    UrlInfoAbout     :
    UrlUpdateInfo    :
    User             :
    Version          : 77.0.3865.120
    VersionMajor     : 3865
    VersionMinor     : 120
    WindowsInstaller : False

    Example 2 (New-Credential -UserName "test" -Password "Pa$$w0rd"):
    UserName : test
    Password : System.Security.SecureString

    Example 3 (Get-User):
    GivenName                         :
    MiddleName                        :
    Surname                           :
    EmailAddress                      :
    VoiceTelephoneNumber              :
    EmployeeId                        :
    AdvancedSearchFilter              : System.DirectoryServices.AccountManagement.AdvancedFilters
    Enabled                           : True
    AccountLockoutTime                :
    LastLogon                         : 10/13/2019 11:23:05 PM
    PermittedWorkstations             : {}
    PermittedLogonTimes               : {255, 255, 255, 255…}
    AccountExpirationDate             :
    SmartcardLogonRequired            : False
    DelegationPermitted               : True
    BadLogonCount                     : 0
    HomeDirectory                     :
    HomeDrive                         :
    ScriptPath                        :
    LastPasswordSet                   : 7/5/2018 7:36:50 PM
    LastBadPasswordAttempt            :
    PasswordNotRequired               : False
    PasswordNeverExpires              : True
    UserCannotChangePassword          : False
    AllowReversiblePasswordEncryption : False
    Certificates                      : {}
    Context                           : System.DirectoryServices.AccountManagement.PrincipalContext
    ContextType                       : Machine
    Description                       : Built-in account for administering the computer/domain
    DisplayName                       :
    SamAccountName                    : Administrator
    UserPrincipalName                 :
    Sid                               : S-1-5-21-2917321062-525338590-4226872743-500
    Guid                              :
    DistinguishedName                 :
    StructuralObjectClass             :
    Name                              : Administrator
    ConnectedServer                   : NEIHEIVJ-WIN

    GivenName                         :
    MiddleName                        :
    Surname                           :
    EmailAddress                      :
    VoiceTelephoneNumber              :
    EmployeeId                        :
    AdvancedSearchFilter              : System.DirectoryServices.AccountManagement.AdvancedFilters
    Enabled                           : False
    AccountLockoutTime                :
    LastLogon                         :
    PermittedWorkstations             : {}
    PermittedLogonTimes               : {255, 255, 255, 255…}
    AccountExpirationDate             :
    SmartcardLogonRequired            : False
    DelegationPermitted               : True
    BadLogonCount                     : 0
    HomeDirectory                     :
    HomeDrive                         :
    ScriptPath                        :
    LastPasswordSet                   : 10/15/2019 2:36:01 AM
    LastBadPasswordAttempt            :
    PasswordNotRequired               : True
    PasswordNeverExpires              : True
    UserCannotChangePassword          : False
    AllowReversiblePasswordEncryption : False
    Certificates                      : {}
    Context                           : System.DirectoryServices.AccountManagement.PrincipalContext
    ContextType                       : Machine
    Description                       : A user account managed by the system.
    DisplayName                       :
    SamAccountName                    : DefaultAccount
    UserPrincipalName                 :
    Sid                               : S-1-5-21-2917321062-525338590-4226872743-503
    Guid                              :
    DistinguishedName                 :
    StructuralObjectClass             :
    Name                              : DefaultAccount
    ConnectedServer                   : NEIHEIVJ-WIN

    GivenName                         :
    MiddleName                        :
    Surname                           :
    EmailAddress                      :
    VoiceTelephoneNumber              :
    EmployeeId                        :
    AdvancedSearchFilter              : System.DirectoryServices.AccountManagement.AdvancedFilters
    Enabled                           : False
    AccountLockoutTime                :
    LastLogon                         :
    PermittedWorkstations             : {}
    PermittedLogonTimes               : {255, 255, 255, 255…}
    AccountExpirationDate             :
    SmartcardLogonRequired            : False
    DelegationPermitted               : True
    BadLogonCount                     : 0
    HomeDirectory                     :
    HomeDrive                         :
    ScriptPath                        :
    LastPasswordSet                   : 10/15/2019 2:36:01 AM
    LastBadPasswordAttempt            :
    PasswordNotRequired               : True
    PasswordNeverExpires              : True
    UserCannotChangePassword          : False
    AllowReversiblePasswordEncryption : False
    Certificates                      : {}
    Context                           : System.DirectoryServices.AccountManagement.PrincipalContext
    ContextType                       : Machine
    Description                       : Built-in account for guest access to the computer/domain
    DisplayName                       :
    SamAccountName                    : Guest
    UserPrincipalName                 :
    Sid                               : S-1-5-21-2917321062-525338590-4226872743-501
    Guid                              :
    DistinguishedName                 :
    StructuralObjectClass             :
    Name                              : Guest
    ConnectedServer                   : NEIHEIVJ-WIN
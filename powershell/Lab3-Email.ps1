$IP= (get-netipaddress).ipv4address | Select-String "192*"
$USER= $Env:UserName
$HOSTNAME= $Env:COMPUTERNAME
$PSV= $PSVersionTable.PSVersion.Major
$DATE= Get-Date -UFormat "%A, %B %d, %Y"
$BODY="This machine's IP is $IP. User is $USER. Hostname is $HOSTNAME. PowerShell Version $PSV. Today's Date is $DATE."
Send-MailMessage -To "vincentneiheisel@gmail.com" -From "vincentneiheisel@gmail.com" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.gmail.com -port 587 -Credential (Get-Credential) -UseSsl
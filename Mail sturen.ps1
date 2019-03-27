# Name		    : Mail sturen
# Script URI	:
# Description	: Stuurt een emailtje
# Version	    : 0.0.1
# Author	    : Koen Blok

#alle variabelen
$SmtpServer = read-host -prompt 'vul de smtp server in'
$SmtpUser = Read-Host -Prompt 'input jou email'
$MailtTo = read-host -prompt 'naar wie'
$MailFrom = $SmtpUser
$MailSubject = read-host -prompt 'voor het onderwerp in'
$MailBody = read-host -prompt 'voer de body in'
$Credentials = Get-Credential

#stuurt de mail met alle informatie van de variabelen
Send-MailMessage -To $MailtTo -from $MailFrom -Subject $MailSubject -Body $MailBody -SmtpServer $SmtpServer -Credential $Credentials -Port 587
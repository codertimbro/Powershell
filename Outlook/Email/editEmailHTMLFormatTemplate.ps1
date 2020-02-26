<#
.Notes
  Name: Tim Brown
  Version = 1.0
  Last Edit: 2/25/2020
.Synopsis
  Script to modify and view HTML Email templates (.ost or .msg)
#>

function edit-emailtemplate{
$outlook = New-Object -ComObject outlook.application #Loads Outlook object in the backgroup
$receiver = Read-Host "the person you sending to"
$file = "<folder path of the email template(.ost or .msg file)>" #The email file needs to be in HTML format
$msg= $outlook.createitemfromtemplate($file) #Loads Outlook and Outlook message in the backgroup
$msg.To = $receiver
$msg.SentonBehalfofName = "Email address for the group or on behalf of someone" #Can be omitted and uses your profile email address
$msg.subject = $msg.Subject.Replace("<Word or Words that you want to replace>","<Object that you want to replace it with>")
$msg.HTMLBody= $msg.HTMLBody.Replace("<Word or Words that you want to replace>","<Object that you want to replace it with>")
$inspector= $msg.GetInspector #This calls the inspector parameter either can view or send the email through Outlook.
$inspector.Display() #This will load Outlook and display the modify Outlook message
}

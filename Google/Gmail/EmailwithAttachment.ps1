#Remember to turn on your "Less secure app access" under security tab on gmail account or gmail will block the message. (https://myaccount.google.com/security)
#You may to do the above every time you send out. 
#Google is turning the setting back to off even through you set to be on.

function send-emailwithattachment{
$email = "sender email address" 
 
$pass = "<sender email address password>" 
 
$smtpServer = "smtp.gmail.com"
$SmtpServerPort = "587"
$smtp = new-object Net.Mail.SmtpClient($smtpServer,$SmtpServerPort)

$msg = new-object Net.Mail.MailMessage 
$smtp = new-object Net.Mail.SmtpClient($smtpServer) 
$smtp.EnableSsl = $true 
$msg.From = "$email"  
$msg.To.Add("$email") 
$msg.BodyEncoding = [system.Text.Encoding]::Unicode 
$msg.SubjectEncoding = [system.Text.Encoding]::Unicode 
$msg.IsBodyHTML = $true
$msg.Attachments.add("<path where the attachment is located at>")  
$msg.Subject = "Test mail from PS" 
$msg.Body = "<h2> Test mail from PS </h2> 
</br> 
Hi there 
"  
$SMTP.Credentials = New-Object System.Net.NetworkCredential("$email", "$pass"); 
$smtp.Send($msg)}

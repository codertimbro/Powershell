function get-html{
Clear-content "<file to output the data>.txt" #Deletes the data inside the file.
$ie = New-Object -comobject InternetExplorer.Application
$url= "<web page address>"
$ie.Navigate($URL)
Start-Sleep 1
$IE.readyState() 
$ie.document.body.OuterText |Out-file -File "<file to output the data>.txt" -Append
$ie.quit() 

function get-html{
Clear-content "G:\pwoershell\jobdetails.txt"
$ie3 = New-Object -comobject InternetExplorer.Application
$url= "https://cinfin.taleo.net/careersection/ex/jobsearch.ftl?lang=en"
$ie3.Navigate($URL)
Start-Sleep 1
$IE3.readyState() 
$ie3.Document.getElementbyID("pagerlink")[1].click
$data=$ie3.document.body.OuterText
$jobids= $data |Select-String -Pattern '\d+' -AllMatches |foreach {$_.matches}|where-object {$_.length -eq 7}|foreach {$_.groups.value}
$links= foreach ($line in $jobids){"https://cinfin.taleo.net/careersection/ex/jobdetail.ftl?job=$line"}
foreach ($line in  $links){
$ie4 = New-Object -comobject InternetExplorer.Application
$ie4.Navigate($line)
Start-Sleep 1
$IE4.readyState()
$ie4.document.body.OuterText |Out-file -File "G:\pwoershell\jobdetails.txt" -Append
$ie4.quit() 
  }
$ie3.quit()
$ie.quit()
$ie2.quit()   
}

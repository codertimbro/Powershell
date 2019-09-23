Write-Host "Move data from one location to another"

function move-data {
param(mandatory=$true, [string[]]$source, [string[]]$destination)
robocopy $source $destination /e /move /r:1 /w:1 /log:<LogFile> /mt:80   #Move data from source to destination all folders including empty folder and multiple threading. 
}

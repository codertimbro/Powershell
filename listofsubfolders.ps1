function get-listofsubfolders{
$path =Read-host "Folder"
Get-Childitem -Path $path -Directory -Recurse -Force -ErrorAction SilentlyContinue|Select-Object -Property Fullname | Export-csv <file path name> -NoType
}

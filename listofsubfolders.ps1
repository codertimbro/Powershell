function get-listofsubfolders{
$path =Read-host "Folder"
Get-Childitem -Path $path -Directory -Recurse -Force -ErrorAction SilentlyContinue|Select-Object -Property Fullname | Export-csv <file path name> -NoType
}
#This scripts get all subfolders list under a path including hidden and system folders.

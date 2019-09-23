Write-host "List of subfolders"

function get-subfolders {
param(Mandatory= $true, [string[]] $path)
get-childItem -path $path -Directory -Recurse -Force -ErrorAction SilentlyContinue    #This list all the folders diwn the tree and irnotres the error messages 
Select-Object FullName   #List the full path 
Export-CSV "<folder path to save list of folders>"
}

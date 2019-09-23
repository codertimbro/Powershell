Write-Host "Folder Creation"

function new-folder {    # Creates a new folder on a network path or at C:/
"$(Get-Date -format F) Start logging" #Timestamp the task
param ([string]$path, [string]$new) #parameters the end user will need to input, $path is the network path where the folder is being created at, $new is folder name that is being created
New-item -path $path -Name $new -itemtype Directory #this creates the folder
} 

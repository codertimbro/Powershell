Write-Host "Find if a user is listed in a group" -Foreground -Yellow

function find-groups{ #Sees if a user in a certain group that is listed in a file
"$(Get-Date -format F) Start logging" #Timestamp the task
param ([string]$user) #The end user inputs the user
echo $null | clip.exe #Clear out Clipboard
foreach($line in [System.IO.File]::ReadLines ("C:/groups.txt"){ #This goes out and reads the file line by line and continues until there is no lines yet
 If ($line -contains $user) { #This functions runs to see if the user in the group line by line 
        Write-Host "$user in group" #This displays an output when the statement is true
        Set-Clipboard #This copies the Wrte-host to clipboard
    } Else {
        Write-Host "$user not in group" # This displays an output
        Out-Null  #this hides the output 
        #it is either Out-null or Write-Host function
    }
}
"$(Get-Date -format F) End logging" #Timestamp the task
Get-Clipboard #This copies all the true statements into clipboard
}

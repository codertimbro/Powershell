function format-spacesinafile{
Import-Csv -Path <orginal file with spaces in it>.csv 
ConvertTo-Csv -NoTypeInformation #Converts the data to be display when it is export to a file. Without this, you will get @{<string data>}
ForEach-Object {$_ -replace "\s+" , "" } #replaces whitespaces
Out-file <new file name with the newly format data>.csv -Encoding ascii -append
}

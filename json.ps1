function get-json{
$PowerShellObject=Get-Content -Path settings.json | ConvertFrom-Json
$PowershellObject
}

# put this file at 'C:\Users\<user name>\Documents\WindowsPowerShell\'

Set-Alias vi vim
Set-Alias open "Invoke-Item"
Set-Alias touch "New-Item"

# open another powershell with the same location
function pw {  Start-Process powershell }

# Load posh-git example profile
. 'C:\Users\yahsuan\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'


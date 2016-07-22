# put this file at 'C:\Users\<user name>\Documents\WindowsPowerShell\'

Set-Alias git "C:\Program Files\Git\bin\git.exe"
Set-Alias vi "C:\Program Files (x86)\Vim\vim74\vim.exe"
Set-Alias vim "C:\Program Files (x86)\Vim\vim74\vim.exe"
Set-Alias open "Invoke-Item"
Set-Alias python "C:\Python27\python.exe"
Set-Alias pip "C:\Python27\Scripts\pip.exe"
Set-Alias touch "New-Item"

# open another powershell with the same location
function pw {  Start-Process powershell }

# always confirm before remove
Remove-Item alias:rm
function rm { Remove-Item -Confirm $args }

# show git info on prompt
function prompt{
    $p = Split-Path (
            Get-Location
            ) -Leaf

        git branch | foreach{
            if($_ -match "^\*(.*)"){
                $p += " [" + $matches[1] + " ] "
            }
        }

    $p = $p + ">"
        Write-Host $p -NoNewline -ForegroundColor Green
        return " "
}

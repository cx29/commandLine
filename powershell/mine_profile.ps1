Set-Alias vim nvim
Set-Alias g git
function getFileName{
  Get-ChildItem -Name
}

Remove-Item alias:ls
Set-Alias ls getFileName
Set-Alias ll Get-ChildItem
Set-Alias py python

function rf {
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Path
  )
  Remove-Item -Path $Path -Recurse -Force
}

function exp {
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Path
  )
  explorer.exe $Path
}

function OpenCurrentFolder{
  Param
  (
    [string]$Path = '.'
  )
  Invoke-Item $Path
}

Set-Alias -Name open -Value OpenCurrentFolder

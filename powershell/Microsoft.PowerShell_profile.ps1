chcp 936
. $env:USERPROFILE\Documents\powershell\mine_profile.ps1

$ENV:STARSHIP_CONFIG = "$HOME\Documents\Powershell\starship.toml"
Invoke-Expression (&starship init powershell)

Invoke-Expression (&scoop-search --hook)

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineKeyHandler -Key 'Tab' -Function MenuComplete
Set-PSReadLineKeyHandler -Key 'Ctrl+z' -Function Undo 
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

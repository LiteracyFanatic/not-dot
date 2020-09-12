Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Tab -Function TabCompleteNext
Set-PSReadLineKeyHandler -Key Shift+Tab -Function TabCompletePrevious
Set-PSReadLineKeyHandler -Key Alt+SpaceBar -Function Complete
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

# influenced by robbyrussel.zsh-theme
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )" # green or red arrow depending if the last command failed (see ?)
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%}' # folder of current dir (see %c or %~)
PROMPT+=' $(git_super_status)' # get git info by calling git-prompt plugin function
PROMPT+=' %{$fg_bold[red]%}$(work_in_progress)' # get work in progress message by calling git plugin function
PROMPT+="%{$reset_color%}" # reset collors for cursor
RPROMPT='' # remove right prompt of git-prompt plugin

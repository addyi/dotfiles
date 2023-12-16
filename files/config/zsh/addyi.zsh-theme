# Influenced by robbyrussell.zsh-theme and https://github.com/ecbrodie/robbyrussell-WIP-theme/

# Reimplements OMZ's work_in_progress to customize the echo
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "[WIP!!] "
  fi
}

 # green or red arrow depending if the last command failed
local return_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# git super status from git-prompt plugin
local git_status='$(git_super_status) %{$reset_color%}'
# custom work in progress
local git_wip='%{$fg[red]%}$(work_in_progress)%{$reset_color%}'
# folder of current dir (see %c or %~)
local directory="%{$fg[cyan]%}%~%{$reset_color%}"

PROMPT="${return_status} ${directory} ${git_status}${git_wip}"
RPROMPT='' # remove right prompt of git-prompt plugin

# A multiline prompt with username, hostname, full path, return status, git branch, git dirty status, git remote status

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

local host_color="cyan"
if [ -n "$SSH_CLIENT" ]; then
  local host_color="red"
fi

PROMPT='
%{$fg_bold[grey]%}➜  %{$fg_bold[${host_color}]%}%n in %1~%{$reset_color%}⚡ %{$fg_bold[green]%}%T %{$fg_bold[magenta]%}$(git_prompt_info)%{$fg_bold[blue]%} $(git_remote_status)
%{$fg_bold[magenta]%}❯%{$fg_bold[green]%}❯%{$reset_color%} '


RPROMPT='${return_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%})"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"

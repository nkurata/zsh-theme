#based on a lot of themes

autoload -Uz vcs_info

function icon {
    local color="%{$fg[magenta]%}"
    if [[ $? -ne 0 ]]; then
        color="%{$fg[red]%}"
    fi
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      echo -n "${color}🐧%{$reset_color%}"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
      echo -n "${color}%{$reset_color%}"
    elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
      echo -n "${color}⊞%{$reset_color%}"
    else
      echo -n "${color}❯%{$reset_color%}"
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ↑"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%} ↓"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[green]%} ↓"

PROMPT='%{$fg_bold[blue]%}%~%{$reset_color%} $(git_prompt_info)%{$fg_bold[blue]%}%*%{$reset_color%}
 $(icon) '

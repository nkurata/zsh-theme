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
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%} ✓"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[green]%} ↓"

function detect_background {
    if [[ $(tput colors) -ge 256 ]]; then
        local bg_color=$(tput setab 0; tput setaf 7; echo -n " "; tput sgr0)
        if [[ "$bg_color" == " " ]]; then
            echo "dark"
        else
            echo "light"
        fi
    else
        echo "dark"
    fi
}

if [[ $(detect_background) == "light" ]]; then
    local prompt_color="%{$fg[blue]%}"
    export LS_COLORS="di=94:fi=0:ln=36:pi=33:so=35:bd=34;46:cd=34;43:or=31;1:mi=31;1:ex=32"
else
    local prompt_color="%{$fg_bold[blue]%}"
    export LS_COLORS="di=34:fi=0:ln=36:pi=33:so=35:bd=34;46:cd=34;43:or=31;1:mi=31;1:ex=32"
fi

PROMPT="${prompt_color}%~%{$reset_color%} $(git_prompt_info)${prompt_color}%*%{$reset_color%}
 $(icon) "

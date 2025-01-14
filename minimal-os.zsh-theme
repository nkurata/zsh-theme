#based on a lot of themes

autoload -Uz vcs_info

# Configure vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' actionformats '%b'
zstyle ':vcs_info:git:*' branchformat '%{$fg[magenta]%}%b%{$reset_color%}'

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

function git_prompt_info() {
    if command -v vcs_info &> /dev/null; then
        vcs_info
        if [[ -n "${vcs_info_msg_0_}" ]]; then
            local git_state=""
            if [[ -n "$(git status --porcelain)" ]]; then
                git_state="${ZSH_THEME_GIT_PROMPT_DIRTY}"
            else
                git_state="${ZSH_THEME_GIT_PROMPT_CLEAN}"
            fi
            echo "${ZSH_THEME_GIT_PROMPT_PREFIX}${vcs_info_msg_0_}${git_state}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
        fi
    fi
}

PROMPT='%{$fg_bold[blue]%}%~%{$reset_color%} $(git_prompt_info)%{$fg_bold[blue]%}%*%{$reset_color%}
 $(icon) '
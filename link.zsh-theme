ZSH_THEME_GIT_PROMPT_PREFIX="%F{#ffff00}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
        if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo ➜; fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%B%F{#d700af}%c%{$reset_color%}$(git_prompt_info)%b
%B%F{#00ffff}$(prompt_char)%b '

RPROMPT='%F{#00ffff}[%*]%{$reset_color%}'

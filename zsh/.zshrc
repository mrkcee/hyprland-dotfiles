##############################
# Defaults
##############################
export TERMINAL='foot'
export BROWSER='firefox'
export EDITOR='nvim'

##############################
# Autorun - GNOME Keyring 
##############################
if [ -n "$DESKTOP_SESSION" ] || [ -n "$WAYLAND_DISPLAY" ]; then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

##############################
# History
##############################
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt APPEND_HISTORY

##############################
# Keybinds
##############################
bindkey -v

##############################
# Plugins
##############################
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

##############################
# Colors
##############################
autoload -U colors && colors
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#626262'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'

##############################
# Prompt
##############################
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats " (%b)"
precmd() { vcs_info }
setopt prompt_subst
prompt='%{$fg[green]%}%n%{$reset_color%}@%m %{$fg[green]%}%~%{$reset_color%}${vcs_info_msg_0_}%(?..%{$fg[red]%} [%?]%{$reset_color%})> '

##############################
# Aliases
##############################
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

##############################
# Misc 
##############################
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate rehash true
zstyle ':completion:*' menu select completer _expand _complete _ignored _correct _approximate rehash true

setopt automenu
setopt autolist
setopt menucomplete
setopt extendedglob
autoload -Uz compinit && compinit

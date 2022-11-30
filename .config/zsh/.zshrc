# history
setopt HIST_SAVE_NO_DUPS # Do not write a duplicate event to the history file.
setopt HIST_SAVE_NO_DUPS # Write a duplicate event to the history file
setopt HIST_REDUCE_BLANKS # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME # append command to history file immediately after execution
setopt EXTENDED_HISTORY # record command start time
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# completions
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)

#highlighting
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# abbrevitions
zmodload zsh/datetime 
source $ZDOTDIR/plugins/zsh-abbr/zsh-abbr.zsh

# prompt
# fpath=($ZDOTDIR/themes/purification $fpath)
# autoload -Uz prompt_purification_setup && prompt_purification_setup
source $ZDOTDIR/themes/bureau/prompt_bureau_setup.zsh

#vim 
#bindkey -v
#export KEYTIMEOUT=1

# dir navigation
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

alias d='dirs -v'

for index ({1..9}) alias "$index"="cd +${index}"; unset index

alias ls="ls --color=yes"
alias cls="printf '\033c'"
alias vim="nvim"
function mkcd {
	mkdir -p "$@" && cd "$1"
}

alias code='code --ozone-platform=wayland'


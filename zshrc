export ZSH="/home/luo/.oh-my-zsh"

#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

 HIST_STAMPS="mm/dd/yyyy"

plugins=(git
	sudo
	z
	web-search
	zsh-syntax-highlighting
        zsh-autosuggestions
	extract
	history
	colored-man-pages
	colorize
	)

source $ZSH/oh-my-zsh.sh

# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EDITOR=/usr/bin/vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias cls='clear'
alias vi='vim'
alias cat='bat'
alias cat='bat --pager=never'
alias ra='ranger'
eval "$(thefuck --alias fuck)"
alias tt1='tmux'
alias pacman='pacman --color=always'
#alias gcc='gcc -fdiagnostics-color=auto'
#alias g++='g++ -fdiagnostics-color=auto'
alias ls='ls --color=auto'
alias ls='lsd --group-dirs first'
alias ls='lsd'
alias lst='lsd --tree'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias sudo='sudo -E'
alias sc='screenfetch'
alias top='bashtop'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export TERM="xterm-256color"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time virtualenv)

setopt no_nomatch

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-




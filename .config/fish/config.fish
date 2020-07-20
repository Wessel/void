# vim: filetype=sh

# Variables

set -g -x fish_greeting ''
set -U os (uname)
set -U git_token Not today friend

# Aliases / Shortcuts

# Automatically set a default User-Agent header
alias curl="curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "
alias wget="wget --header=\"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "

alias ct="curl \"https://httpbin.org/get\" >> curl.json"
alias wt="wget \"https://httpbin.org/get\" -d -O wget.json -o wget.log"

alias py="python "
alias v="nvim "
alias r="ranger "

alias ka="killall"
alias cya="shutdown now"
# ls alternative
alias ls="exa "
alias la="exa -la"
alias ols="/usr/bin/ls -hN --color=auto --group-directories-first"

alias pacman="sudo pacman "
alias upc="sudo pacman -Syu; pkill -RTMIN+8 i3blocks"
alias lsp="pacman -Qett --color=always | less"

alias diff="diff --color=auto "
alias grep="grep --color=auto "
alias ccat="highlight --out-format=ansi"

alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias YT="youtube-viewer"
alias yta="yt -x -f bestaudio/best"

alias ref="shortcuts >/dev/null; source ~/.config/shortcutrc"

# Use neovim for vim if present
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

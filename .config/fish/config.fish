# vim: filetype=sh

# Variables

set -g -x fish_greeting ''
set -U os (uname)
set -U TERMINAL "st"

# Aliases / Shortcuts

# dwmblocks
export PATH="$PATH:/home/wessel/.local/bin/statusbar:/home/wessel/.local/bin/"

# Automatically set a default User-Agent header
alias curl="curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "
alias wget="wget --header=\"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "

# wget/curl tests
alias ct="curl \"https://httpbin.org/get\" >> curl.json"
alias wt="wget \"https://httpbin.org/get\" -d -O wget.json -o wget.log"

alias py="python "
alias v="nvim "
alias r="ranger "

alias ka="killall"
alias cya="shutdown now"

# exa, a coloured ls alternative
alias ls="exa "
alias la="exa -la"
alias ols="/usr/bin/ls"
alias olsc="/usr/bin/ls -hN --color=auto --group-directories-first"

alias pacman="sudo pacman "
alias upc="sudo pacman -Syu; pkill -RTMIN+8 dwmblocks"
alias lsp="pacman -Qett | less" #--color=always 

# Set colours default for commands
alias diff="diff --color=auto "
alias grep="grep --color=auto "
alias ccat="highlight --out-format=ansi"

# Show system information
alias show="inxi -vvG && neofetch"

# Download videos
alias yt="yt-dlp --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="yt -x -f bestaudio/best"

alias ref="shortcuts >/dev/null; source ~/.config/shortcutrc"

# Set vivaldi-stable to vivaldi for xdg-open
alias vivaldi="vivaldi-stable"

# Use neovim for vim if present
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

# Set custom prompt
function fish_prompt -d "Write out the prompt"
  set_color "c0241e"; printf "["
  set_color "d69923"; printf $USER
  set_color "99AAB5"; printf "@"
  set_color "679D69"; printf $hostname
  set_color "c0241e"; printf "]"
  set_color grey; printf '%s' (prompt_pwd);
  set_color "99AAB5"; printf "\$ "
end

bind -e \cv

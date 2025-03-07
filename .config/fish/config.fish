# vim: filetype=sh

# Variables

set -g -x fish_greeting ''
set -U os (uname)
set -U TERMINAL "kitty"
export GPG_TTY=$(tty)

# Scaling for hidpi
set -x QT_SCALE_FACTOR 1.5
set -x GDK_SCALE 1.5
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# Aliases / Shortcuts

# zoxide
export FZF_DEFAULT_OPTS='--height 40%'

# dwmblocks
fish_add_path --path $HOME/.local/bin/statusbar/
fish_add_path --path $HOME/.local/bin/

# shortcut for shutdown
alias cya="shutdown now"

# Automatically set a default User-Agent header
alias curl="curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "
alias wget="wget --header=\"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0\" "

# wget/curl tests
alias ct="curl \"https://httpbin.org/get\" >> curl.json"
alias wt="wget \"https://httpbin.org/get\" -d -O wget.json -o wget.log"

# common aliases
alias py="python"
alias v="nvim"
alias vi="nvim"
alias r="ranger"

# LaTeX
alias texmk="latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=./tmp main.tex --shell-escape"

# eza, an exa alternative, a coloured ls alternative
alias ls="eza "
alias la="eza -la"
alias ols="/usr/bin/ls"
alias olsc="/usr/bin/ls -hN --color=auto --group-directories-first"

# pacman aliases
alias pacman="sudo pacman "
alias upc="sudo pacman -Syu; pkill -RTMIN+8 dwmblocks"
alias lsp="pacman -Qett | less" #--color=always

# Set colours default for commands
alias diff="diff --color=auto "
alias grep="grep --color=auto "
alias ccat="highlight --out-format=ansi"

# Show system information
alias show="inxi -vvG && fastfetch"

# Download videos
alias yt="yt-dlp --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="yt -x -f bestaudio/best"

alias ref="shortcuts >/dev/null; source ~/.config/shortcutrc"

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

szia
fastfetch

set PATH $PATH:/home/vili1120/.local/bin

#if test -z "$XDG_RUNTIME_DIR"
#    set XDG_RUNTIME_DIR "/tmp/(id -u)-runtime-dir"
#
#    mkdir -p --mode=0700 "$XDG_RUNTIME_DIR"
#    set -x XDG_RUNTIME_DIR
#end

set XDG_RUNTIME_DIR "/run/user/$(id -u)"

set WAYLAND_DISPLAY wayland-1
set XDG_SESSION_TYPE wayland
set LIBSEAT_BACKEND seatd
#set XDG_CURRENT_DESKTOP sway
set XDG_VINR $(basename "$(tty)" | sed 's/tty//')
set PATH "$PATH:/usr/bin"

alias py="pypy3"
alias timer="python3 ~/timer/main.py"
alias truth="echo A cigányok nem jók."
alias ls="lsd"
alias la="lsd -a"

#Git aliases

alias ga="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gpu="git push -u"
alias gpl="git pull"
alias gco="git checkout"

eval "$(oh-my-posh init fish --config /home/vili1120/.poshthemes/custom.toml)"

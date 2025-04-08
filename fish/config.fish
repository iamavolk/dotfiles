# Minimal fish config

alias l='eza -lbS'
alias ll='eza -aablGS'
alias lt='eza -blT --no-user --no-time --no-permissions'
alias nv='nvim'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'


set -U fish_greeting
set fish_prompt_pwd_dir_length 0

if status is-interactive
    # Commands to run in interactive sessions can go here
end


# less colors and format
#set -Ux LESS_TERMCAP_mb \e\[1\x3B32m
#set -Ux LESS_TERMCAP_md \e\[1\x3B32m
#set -Ux LESS_TERMCAP_me \e\[0m
#set -Ux LESS_TERMCAP_se \e\[0m
#set -Ux LESS_TERMCAP_so \e\[01\x3B33m
#set -Ux LESS_TERMCAP_ue \e\[0m
#set -Ux LESS_TERMCAP_us \e\[1\x3B4\x3B31m
#set -Ux MANPAGER "less -R"
#set -Ux MANROFFOPT "-c"

alias z='zathura $1 --fork'
alias nvim-new='NVIM_APPNAME="nvim-new" nvim'
alias vi='NVIM_APPNAME="nvim-new" nvim'

source ~/dotfiles/fish/aux.fish

# manpage width
set -gx MANWIDTH 120
set -Ux BAT_THEME base16

set -Ux EDITOR vi
set -Ux SUDO_EDITOR vi

neofetch
ncal -b3

# Minimalist fish config

alias l='eza -lxS'
alias ll='l -A'
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

# Ruby config, not sure if will use outside of container. Candidate for deletion
# RVM is a Ruby version manager
# export PATH="$PATH:$HOME/.rvm/bin"
# RVM for fish
# rvm default
# rbenv fish integration
# status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source

# less (pager) colors
set -U*x* LESS_TERMCAP_mb \e\[1\x3B32m
set -U*x* LESS_TERMCAP_md \e\[1\x3B32m
set -U*x* LESS_TERMCAP_me \e\[0m
set -U*x* LESS_TERMCAP_se \e\[0m
set -U*x* LESS_TERMCAP_so \e\[01\x3B33m
set -U*x* LESS_TERMCAP_ue \e\[0m
set -U*x* LESS_TERMCAP_us \e\[1\x3B4\x3B31m

alias vagrant='ssh vagrant@127.0.0.1 -p 16222 -XY'
# reset gnome-settings screenshot
alias rst_screenshot='gsettings set org.gnome.gnome-flashback.keybindings screenshot []; gsettings reset org.gnome.gnome-flashback.keybindings screenshot'
rst_screenshot

source ~/dotfiles/fish/aux.fish

neofetch
ncal -b3

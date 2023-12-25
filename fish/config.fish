neofetch
ncal -b3

#alias connect-151-14='ssh eecs151-adi@c111-14.eecs.berkeley.edu'
#alias connect-151-15='ssh eecs151-adi@c111-15.eecs.berkeley.edu'
#alias connect-151-16='ssh eecs151-adi@c111-16.eecs.berkeley.edu'
#alias enter-151-proj='nvim scp://eecs151-adi@c111-16.eecs.berkeley.edu//home/cc/eecs151/sp23/class/eecs151-adi/fpga_project_sp23-bear_the_risc/hardware/src/'
alias vagrant='ssh vagrant@127.0.0.1 -p 16222 -XY'
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -lh'
alias 151='cd ~/Desktop/_EECS151/'
alias 189='cd ~/Desktop/_CS189/'
alias 162='cd ~/Desktop/_CS162/'
alias 162-proj='cd ~/Desktop/_CS162/docker/.workspace/code/personal/proj-pregame/src'
alias 162-hw='cd ~/Desktop/_CS162/docker/.workspace/code/personal/'
alias 152='cd ~/Desktop/CS152/'
alias 161='cd ~/Desktop/CS161/'
alias 169='cd ~/Desktop/CS169/'
alias nv='~/Downloads/nvim-linux64/bin/nvim'

set -U fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#export PATH="$HOME/.cargo/bin:$PATH"

# RVM is a Ruby version manager
# export PATH="$PATH:$HOME/.rvm/bin"
# RVM for fish
# rvm default

# rbenv fish integration
status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source

# LESS colors
set -U*x* LESS_TERMCAP_mb \e\[1\x3B32m
set -U*x* LESS_TERMCAP_md \e\[1\x3B32m
set -U*x* LESS_TERMCAP_me \e\[0m
set -U*x* LESS_TERMCAP_se \e\[0m
set -U*x* LESS_TERMCAP_so \e\[01\x3B33m
set -U*x* LESS_TERMCAP_ue \e\[0m
set -U*x* LESS_TERMCAP_us \e\[1\x3B4\x3B31m

# reset gnome-settings screenshot
alias rst_screenshot='gsettings set org.gnome.gnome-flashback.keybindings screenshot []; gsettings reset org.gnome.gnome-flashback.keybindings screenshot'
rst_screenshot

alias asic='cd ~/Desktop/_EECS151/Labs/ASIC/'


# -------------
#  BWRC connect
# -------------
alias bwrcrdsl-1='ssh -XY alexfromshermanoaks@bwrcrdsl-1.eecs.berkeley.edu -C'

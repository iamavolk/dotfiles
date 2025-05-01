alias l='eza -lbS --git'
alias la='l -a'
alias ll='eza -aablGS'
alias lt='eza -blT --no-user --no-time --no-permissions'

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
set -Ux LESS_TERMCAP_mb \e\[1\x3B32m
set -Ux LESS_TERMCAP_md \e\[1\x3B32m
set -Ux LESS_TERMCAP_me \e\[0m
set -Ux LESS_TERMCAP_se \e\[0m
set -Ux LESS_TERMCAP_so \e\[01\x3B33m
set -Ux LESS_TERMCAP_ue \e\[0m
set -Ux LESS_TERMCAP_us \e\[1\x3B4\x3B31m

# alias z='zathura $1 --fork'
alias z='LD_LIBRARY_PATH=/usr/local/lib/x86_64-linux-gnu zathura --fork'

source ~/dotfiles/fish/aux.fish

function gdrive
    set action $argv[1]
    set mnt_pnt "/home/ke314/gdrive"
    set remote_drive "gdrive:"

    switch $action
        case "mount"
            rclone mount "$remote_drive" "$mnt_pnt" &
        case "umount"
            fusermount -u "$mnt_pnt"
    end
end

set -gx MANWIDTH 79
set -Ux BAT_THEME base16
set -Ux EDITOR vi
set -Ux SUDO_EDITOR vi

neofetch
ncal -b3

xmodmap -e "keycode 107 = BackSpace"
xmodmap -e "keycode 22 = NoSymbol"


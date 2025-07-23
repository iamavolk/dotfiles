alias l='eza -lbS --git --group-directories-first'
alias la='l -a'
alias ll='eza -aablGS --group-directories-first'
alias lt='eza -blT --no-user --no-time --no-permissions --group-directories-first'
alias ls='eza -a --group-directories-first'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'

alias ed='vi'
alias avim='vi -n -u NONE -i NONE -N -c "set noswapfile nobackup nowritebackup noundofile"'

set fish_prompt_pwd_dir_length 0

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function gdrive
    set action $argv[1]
    set mnt_pnt $HOME/gdrive
    set remote_drive "gdrive:"

    switch $action
        case "mount"
            rclone mount "$remote_drive" "$mnt_pnt" &
        case "umount"
            fusermount -u "$mnt_pnt"
    end
end

set -x GOOGLE_CLOUD_PROJECT "gemini-cli-test0"

neofetch
ncal -b3

alias l='eza -lbS --git --group-directories-first'
alias la='l -a'
alias ll='eza -aablGS --group-directories-first'
alias ls='eza -a --group-directories-first'
alias lt='eza -blT \
    --no-user \
    --no-time \
    --no-permissions \
    --group-directories-first'

alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'

alias vi='nvim'
alias iv='NVIM_APPNAME=nvim-12 nvim'
alias avim='nvim -n -u NONE -i NONE \
    -N -c "set noswapfile nobackup nowritebackup noundofile"'

set fish_prompt_pwd_dir_length 0

if status is-interactive
    fastfetch
end

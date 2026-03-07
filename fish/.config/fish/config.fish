if status is-interactive
    fastfetch
end
set fish_prompt_pwd_dir_length 0

alias l='eza -lbS --git --group-directories-first'
alias la='l -ag'
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

alias lg='lazygit'
alias hx='helix'
alias vi='nvim'
alias iv='NVIM_APPNAME=nvim-12 nvim'
alias avim='nvim -n -u NONE -i NONE \
    -N -c "set noswapfile nobackup nowritebackup noundofile"'

# yazi + fish cwd sync integration
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

bind alt-l 'commandline -r "l"; commandline -f execute'
bind ctrl-y 'commandline y; commandline -f execute'

zoxide init --cmd cd fish | source
fzf --fish | source
# source $HOME/.local/share/bob/env/env.fish

alias vitest='NVIM_APPNAME=nvim-test nvim'

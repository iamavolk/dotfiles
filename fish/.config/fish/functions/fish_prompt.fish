set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_dirtystate '✗'
set -g __fish_git_prompt_char_cleanstate ' ✔'

function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color brmagenta
    printf '%s' $USER
    set_color normal

    printf ' @ '
    set_color yellow
    echo -n (prompt_hostname)
    set_color normal

    printf ' '

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal

    set_color yellow
    #echo -n (fish_vcs_prompt)
    printf '%s' (fish_vcs_prompt)
    set_color normal

    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf " (%s)" (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    set_color green
    printf ' (󰘧) '
end

####  Key swaps (same can be done with KMonad)
``` bash
setxkbmap -option

    altwin:swap_lalt_lwin
    ctrl:nocaps
```

#### Remap keys on X11 (unreliable, not future-proof)
``` bash
xmodmap -e "keycode 107 = BackSpace" 
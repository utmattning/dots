set fish_greeting
set fish_prompt_pwd_dir_length 0
set -gx TERM xterm-256color
set -x LIBVA_DRIVER_NAME nvidia
set -x GBM_BACKEND nvidia-drm
set -x __GLX_VENDOR_LIBRARY_NAME nvidia
set -x WLR_NO_HARDWARE_CURSORS 1
set -x WLR_RENDERER vulkan

alias vim 'nvim'
alias ll 'exa -l -g --icons'
alias lla 'll -a'
alias llt 'll --tree'
alias update 'yay -Syu'

function fish_prompt -d "Write out the prompt"
    printf ' %s%s%s > ' \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

fish_add_path /home/utmattning/.spicetify

# Created by `pipx` on 2025-04-20 02:50:11
set PATH $PATH /home/utmattning/.local/bin

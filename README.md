# My current Linux configs for the apps listed below.

- Hyprland
    - This includes:
      - Hyprland
      - Hyprlock
      - Hypridle
      - Hyprpaper (not really much of a config) 
- Nvim
    - Currently telescope gives an error, this seemes to be
      since I am using treesitter main branch instead of master
      as they are currently moving to main. Hopefully a future
      update fixes this as others have the same issue and it. 
      It seems to only affect the highlighting in the code preview.
- Waybar 
    - Might add a bluetooth module later down the line but unsure.
    - for the center widget, it needs to be changed to the name of the device
- Wofi 
- Alacritty
- wlogout
  - really just a catppuccin theme 

## What is updateConfigs?

- I got sick of manually deleting and copying everything
- symlinks don't work the way I think
- hard links would work... but not on new files (I think, they confuse me)
- It empties this directory and pulls from the config file on the machine

## What is applyConfigs?

- basically the opposite of updateConfigs
- it copies everything from this dir to the .config dir
- I haven't tested this yet though, use with caution

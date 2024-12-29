#!/bin/bash

command sudo pacman -S git base-devel
command sudo pacman -S curl
command sudo pacman -S wget

command sudo pacman -S grim slurp

command sudo pacman -S zsh zsh-completions
command sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
command yay -S ttf-dejavu ttf-meslo-nerd-font-powerlevel10k 
command git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

command sudo pacman -S --needed wireplumber libgtop bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python upower pacman-contrib power-profiles-daemon gvfs
command yay -S ags-hyprpanel-git
command sudo pacman -S rofi

CONFIG_DIR="$LOCAL_DIR/config"
echo "Copying dotfiles..."
cp -r config/* ~/.config/
cp "$LOCAL_DIR/home/.zshrc" ~/

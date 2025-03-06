<img src="https://avatars.githubusercontent.com/u/29184334?v=4" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

**Void.**

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Arch pass](https://img.shields.io/badge/Arch-Pass-brightgreen?style=flat-square)](/)
[![RHEL Pass](https://img.shields.io/badge/RHEL-Pass-brightgreen?style=flat-square)](/)
[![Debian Pass](https://img.shields.io/badge/Debian-Pass-brightgreen?style=flat-square)](/)

A collection of dotfiles, scripts and utilities I use on my Linux systems.

<br><br><br>

## Table of contents
* System tests
* Packages
  * Package list
  * Installation command

# System Tests
Do note that these dotfiles may need to be adapted when using a different distro, feel free to create a [pull request](https://github.com/Wessel/void/compare) or [issue](https://github.com/Wessel/void/issues/new/choose) if you do find any fixes for other distros.

This repo have been tested and confirmed to be working on the following distros:
* Debian
* RHEL (RedHat, Rocky Linux, Fedora, ...)
* Arch

# Packages
## Package List
[kitty](https://github.com/kovidgoyal/kitty)
[fish](https://github.com/fish-shell/fish-shell)
[omf](https://github.com/oh-my-fish/oh-my-fish)
[btop](https://github.com/aristocratos/btop)
[fastfetch](https://github.com/fastfetch-cli/fastfetch)
[eza](https://github.com/eza-community/eza)
[ranger](https://github.com/ranger/ranger)
[feh](https://github.com/derf/feh)
[neovim](https://github.com/neovim/neovim)

## Installation command
<details>

<summary>Arch Linux</summary>

1. Install [yay](https://github.com/Jguer/yay) (superior package manager)
```sh
sudo pacman -S --needed git base-devel
git clone https://github.com/Jguer/yay.git
cd yay
makepkg -si
```
2. Update mirrors and install packages
```sh
yay -Syyu
yay -S xorg-server xorg-apps fish neofetch ranger feh bashtop htop
```
3. Set default shell to fish and install Oh My Fish
```sh
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

Or do everything at once with the following command:
```sh
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Syyu && yay -S xorg-server xorg-apps fish neofetch ranger feh bashtop htop && echo /usr/local/bin/fish | sudo tee -a /etc/shells && chsh -s /usr/local/bin/fish && curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

</details>

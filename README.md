<!---
To update:
  project.
    master        - The master org or user of the repo
    linter        - The linter used for the project
    name          - Project name
    lang          - The (primary) programming language used
    logo          - Project logo
    contact       - All ways to contact for any inqueries
    reviewers     - A list of users to auto-assign to issues and features
  info.
    toc           - Table of Contents of README
    desc          - Small project description
    badges        - Any extra badges
  setup.
    prerequisites - The prerequisites needed to run the project
    install       - Command for initial installation
    test          - Command for running tests
  tree.
    parts         - All individual parts of the project
--->
<img src="https://avatars.githubusercontent.com/u/29184334?v=4" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

> Void

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Arch pass](https://img.shields.io/badge/Arch-Pass-brightgreen?style=flat-square)](/)
[![RHEL Pass](https://img.shields.io/badge/RHEL-Pass-brightgreen?style=flat-square)](/)
[![Debian Pass](https://img.shields.io/badge/Debian-Pass-brightgreen?style=flat-square)](/)

A collection of dotfiles I use on my Linux systems.

<br><br>

<!---
Example table of contents:
* header
  * sub header
--->
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
| Package | Use Case |
| ------------- | ------------- |
| [Fishshell](https://github.com/fish-shell/fish-shell) + [omf](https://github.com/oh-my-fish/oh-my-fish) | Custom shell |
| [Neofetch](https://github.com/dylanaraps/neofetch) | Get system information |
| [Exa](https://github.com/ogham/exa) | LS replacement (stylized) |
| Xorg | Display server |
| [Ranger](https://github.com/ranger/ranger) | TUI file browser |
| [feh](https://github.com/derf/feh) | Background manager |
| [Bashtop](https://github.com/aristocratos/bashtop)/[htop](https://github.com/htop-dev/htop/)  | Resource watcher |


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
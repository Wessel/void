<img src="$(LOGO_SQUARE).svg" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

> Void

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE) $(BADGES)

A collection of all dotfiles that I use in most of my linux systems

<br>

## Table of contents
* [Requirements](#requirements)
## Requirements
All packages that are used by the dotfiles are listed in [packagelist](packagelist.txt). You may install them by running
  `yay -S - < packagelist.txt`
Compile dwm, dwmblocks, dmenu and st after the installation by running `sudo make clean install` in `~/.local/src/...`.

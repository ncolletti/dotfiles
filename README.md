# Dotfiles Management

Syncing my dotfiles and configuration files with [GNU-Stow](https://www.gnu.org/software/stow/).

Helpful post explaining how to use the app here from [Brandon Invergo](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html).

```
sudo apt install stow
mkdir ~/dotfiles
mv .zsh .bash .... into ~/dotfiles/zsh ~/ dotfiles/bash
mv .config/nvim/nvim.init .... into ~/dotfiles/nvim/.config/nvim
stow zsh nvim bash
```
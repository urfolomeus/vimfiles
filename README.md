# Vim files

This is a repo that collects my current Vim config files.

## Flavour

I'm currently using [NeoVim](https://github.com/neovim/neovim).

## Init file

See the [init.vim](./init.vim) file for my current settings.

## Config files

There are various config files in [/config](./config) that are used by the plugins listed in the init.vim file. They are sourced at the bottom of the init.vim file.

## Installing on a new machine

1. Symlink init.vim to `~/.config/nvim/init.vim`
2. [Install vim-plug](https://github.com/junegunn/vim-plug#neovim)
3. Run `:PlugInstall` in nvim to install packages
4. Symlink `config/coc-config.json` to `$HOME/.config/nvim/coc-config.json`

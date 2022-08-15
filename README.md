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

## Setting up CoC for Python linting

1. Symlink `config/coc-settings.json` to `$HOME/.config/nvim/coc-settings.json`.
2. Symlink `../dotfiles/python/flake8` to `$HOME/.config/flake8` so that we get the right default Flake8 settings to play nicely with Black.
3. Install [pyenv](https://github.com/pyenv/pyenv).
4. Install the desired version of Python (i.e. `pyenv install 3.7.8`)
5. Set a global Python version (i.e. `pyenv global 3.7.8`)
6. Ensure the latest version of pip is installed `pip install --upgrade pip`
7. Add Flake8 and Black `pip install flake8 black`
8. Open a Python file in neovim and make sure that linting starts as expected

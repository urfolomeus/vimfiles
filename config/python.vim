" In order for NeoVim to be able to use Python we need to:
"   1. install the pynvim package `pip3 install pynvum`
"   2. tell it where the python3 executable is
" We can check to make sure that it is working properly by running `:CheckHealth`
let g:python3_host_prog = '$HOME/.pyenv/shims/python3'
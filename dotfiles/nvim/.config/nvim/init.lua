-- Examples for getting started with nvim lua: https://martinlwx.github.io/en/config-neovim-from-scratch/
vim.loader.enable() -- improves module loading by compiling and caching to bytecode

require('options')
require('keymaps')
require('plugin_manager')

-- Configuration for plugins with lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Specs for plugins
local plugin_specs = {
  require("plugins.colors.catppuccin"), -- colorscheme
  require("plugins.treesitter"),        -- nvim-treesitter
  require("plugins.nvim-tree"),         -- nvim-tree
  require("plugins.fzf-lua"),           -- fzf-lua
  require("plugins.mason-lsp"),         -- Mason lsp configuration
  require("plugins.nvim-autopairs"),    -- nvim-autopairs for auto brackets, quotes, etc.
  require("plugins.vim-commentary"),    -- Comments
}

-- Pass the specs table to lazy.setup
require("lazy").setup(plugin_specs)

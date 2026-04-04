-- Configuration for plugins with lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Specs for plugins
local plugin_specs = {
  require("plugins.colors.catppuccin"), -- colorscheme
  require("plugins.treesitter"),        -- Syntax highlighting / parsing for different languages
  require("plugins.nvim-tree"),         -- Tree sidebar
  require("plugins.fzf-lua"),           -- Fuzzy find / fuzzy grep
  require("plugins.mason-lsp"),         -- Mason lsp configuration
  require("plugins.nvim-autopairs"),    -- Auto create pairs for brackets, quotes, etc.
  require("plugins.vim-commentary"),    -- Comments
  require("plugins.gitsigns"),          -- Git hunk / blame integrations
  require("plugins.bufferline"),        -- Add bufferline to top of screen
}

-- Pass the specs table to lazy.setup
require("lazy").setup(plugin_specs)

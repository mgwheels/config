-- Configuration for plugins with lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Specs for plugins
local plugin_specs = {
  require("plugins.colors.sonokai"),    -- colorscheme
  require("plugins.bufferline"),        -- Add bufferline to top of screen.
  require("plugins.cmp"),               -- Enable LSP auto-completion, and give option for code completion
  require("plugins.fzf-lua"),           -- Fuzzy find / fuzzy grep
  require("plugins.gitsigns"),          -- Git hunk / blame integrations
  require("plugins.harpoon"),           -- Add harpoon to quickly mark / navigate between common files
  require("plugins.mason-lsp"),         -- Mason lsp configuration
  require("plugins.nvim-autopairs"),    -- Auto create pairs for brackets, quotes, etc.
  require("plugins.nvim-tree"),         -- Tree sidebar
  require("plugins.nvim-web-devicons"), -- File type icons (requires Nerd Font in terminal)
  require("plugins.treesitter"),        -- Syntax highlighting / parsing for different languages
  require("plugins.vim-commentary"),    -- Comments
  require("plugins.vim-surround"),      -- Surrounding quotes / tags keybinds
  require("plugins.vim-repeat"),        -- Add support for . repeating plugin actions
}

-- Pass the specs table to lazy.setup
require("lazy").setup(plugin_specs)

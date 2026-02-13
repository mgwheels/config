-- Configuration for plugins with lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Specs for plugins
local plugin_specs = {
  -- colorscheme
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("config.colorscheme")
    end,
  },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("config.nvim-tree")
    end,
  },

  -- fzf-lua
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("config.fzf-lua")
    end,
    event = "VeryLazy",
  },
}


-- Pass the specs table to lazy.setup
require("lazy").setup(plugin_specs)

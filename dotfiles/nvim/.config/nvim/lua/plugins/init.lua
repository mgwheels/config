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
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,     -- load immediately
    config = function()  -- load early
        vim.g.sonokai_style = "atlantis"
        vim.g.sonokai_enable_italic = 1
        vim.g.sonokai_better_performance = 1
        -- vim.g.sonokai_transparent_background = 1

        -- Load the colorscheme
        vim.cmd("colorscheme sonokai")
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

return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,      -- load immediately
  config = function()   -- load early
    vim.g.sonokai_style = "atlantis"
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_better_performance = 1
    -- vim.g.sonokai_transparent_background = 1

    -- Load the colorscheme
    vim.cmd("colorscheme sonokai")
  end,
}

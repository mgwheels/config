return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local status, configs = pcall(require, "nvim-treesitter.configs")
    if not status then return end

    configs.setup({
      -- A list of parser names, or "all"
      ensure_installed = {
        "go",
        "html",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "vim",
        "vimdoc"
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when you open a file
      auto_install = true,

      highlight = {
        enable = true, -- false will disable the whole extension
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set to `false` if you want only tree-sitter highlighting.
        additional_vim_regex_highlighting = false,
      },

      indent = { enable = true },
    })
  end,
}

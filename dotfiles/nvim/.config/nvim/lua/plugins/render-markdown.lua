return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- markdown + markdown_inline parsers (already ensured)
    "nvim-tree/nvim-web-devicons",     -- icons for code blocks / headings
  },
  ft = "markdown",                     -- lazy-load only when opening a markdown buffer
  opts = {
    -- Disable latex rendering: it requires external converters (utftex / latex2text).
    -- Everything else renders with pure Lua + treesitter and needs no extra tools.
    latex = { enabled = false },
  },
}

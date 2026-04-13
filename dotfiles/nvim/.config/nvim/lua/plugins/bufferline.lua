return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffer",
        style_preset = "default",
        theming = true,
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        separator_style = "slant", -- Style for tab separators. Other options include `thin`, `thick`, `slant`, `slope`, `padded_slant`, `padded_slope`
        indicator = {
          style = "none",
        },
        buffer_close_icon = "x",
        close_icon = "",
        modified_icon = "●",
        min_priority = 0,
        persist_buffer_sort = true,
        hover = {
          enabled = true,
          delay = 200,
        },
      }
    })
  end,
  event = "VeryLazy",
}

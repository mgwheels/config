return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        style_preset = "default",
        theming = true,
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        separator_style = "thin",
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
        diagnostics_indicator = function(_, _, diag)
          local icons = { error = "E", warn = "W", hint = "H", info = "I" }
          local ret = (diag.error and icons.error .. diag.error .. " " or "")
            .. (diag.warning and icons.warn .. diag.warning or "")
          return ret ~= "" and ret or nil
        end,
      },
    })
  end,
  event = "VeryLazy",
}

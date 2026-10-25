return {
  dir = "~/dev/Lua/nvim-notes",
  config = function(_, opts)
    require("nvim-notes").setup(opts)
  end,
  -- opts = { keymap = "<leader>hw" }
  opts = { keymap = "<leader>nt" }
}

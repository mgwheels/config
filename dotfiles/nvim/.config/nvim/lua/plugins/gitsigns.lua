return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    -- Keybinds
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
    vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>",
      { desc = "Toggles git blame on current line" })
  end
}

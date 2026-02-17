require("fzf-lua").setup {
  -- defaults = {
    -- file_icons = "mini",
  -- },
  winopts = {
    row = 0.5,
    height = 0.7,
  },
  files = {
    cmd = "rg --files --hidden --follow --glob '!.git/'",
    previewer = false,
    git_icons = true,
    -- no_ignore = false, -- Not needed due to custom cmd. Otherwise would display hidden files like .gitignore
  },

  grep = {
    -- Ensures live_grep also respects .gitignore + shows hidden files
    rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e --hidden --glob '!.git/'",
  },
}

-- Keybindings
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Fuzzy grep files" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", { desc = "Fuzzy grep tags in help files" })
vim.keymap.set("n", "<leader>ft", "<cmd>FzfLua btags<cr>", { desc = "Fuzzy search buffer tags" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Fuzzy search opened buffers" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "Fuzzy search opened files history" })

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    local harpoon = require("harpoon")
    -- REQUIRED (see plugin README)
    harpoon:setup()

    -- Keyinds
    vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Open harpoon menu" })
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
    -- NOTE: If needing to remove files from harpoon, open menu and can use dd to remove
  end,
}

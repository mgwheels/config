-- SET THIS TO 'false' if you see question marks [?]
local USE_ICONS = true 

require("nvim-tree").setup({
  sort_by = "case_sensitive",

  filters = {
    dotfiles = false,      -- Show files starting with a dot (like .gitignore)
    git_ignored = false,   -- Show files listed in .gitignore (like .terraform)
  },
  -- Optional: If you still want to hide the .git folder itself
  git = {
    ignore = false,
  },

  -- actions = {
    -- open_file = {
      -- quit_on_open = true,
    -- },
  -- },
  view = {
    width = 30,
    side = "left",
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    group_empty = true,
    icons = {
      -- This stops nvim-tree from asking mini.icons for Nerd Font symbols
      web_devicons = {
        file = { enable = false },
        folder = { enable = false },
      },
      -- This toggle handles the fallback
      show = {
        file = USE_ICONS,
        folder = USE_ICONS,
        folder_arrow = USE_ICONS,
        git = false, -- Set to false to hide git icons showing ?
      },
      glyphs = {
        default = "-",
        symlink = "s",
        folder = {
          -- Text fallbacks for when USE_ICONS is false
          arrow_closed = ">",
          arrow_open = "v",
          default = "[D]",
          open = "[O]",
          empty = "[ ]",
          empty_open = "[ ]",
        },
      },
    },
  },

})

-- Keybindings
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle nvim-tree" })
vim.keymap.set('n', '<leader>tf', '<cmd>NvimTreeFindFile<cr>', { desc = 'Find file in nvim-tree' })
vim.keymap.set('n', '<leader>te', '<cmd>NvimTreeFocus<cr>', { desc = 'Focus (entrace) to nvim-tree' })
vim.keymap.set('n', '<leader>tc', '<cmd>NvimTreeCollapse<cr>', { desc = 'Collapse all folders in nvim-tree' })

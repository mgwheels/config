-- SET THIS TO 'false' if you see question marks [?]
local USE_ICONS = true 

require("nvim-tree").setup({
  sort_by = "case_sensitive",
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
-- Press Ctrl + n to open/close the tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
-- Press <leader>e to focus the tree
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Focus NvimTree' })

-- [[ Basic Remaps ]]

-- Center screen when searching with n
vim.keymap.set('n', 'n', 'nzzzv', { desc = "Next search result, centered" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Prior search result, centered" })

-- Remap x to allow deletes without cutting to clipboard
vim.keymap.set('n', 'x', '"_d', { desc = "Deletes a selection without cutting (Normal)" })
vim.keymap.set('n', 'xx', '"_dd', { desc = "Deletes a line without cutting (Normal)" })
vim.keymap.set('v', 'x', '"_d', { desc = "Deletes a selection without cutting (Visual)" })

-- Remap U to handle redo
vim.keymap.set('n', 'U', '<C-r>', { desc = "Redo" })

-- Terminal keymaps
vim.keymap.set("t", "<Esc>", "<cmd>stopinsert<cr>", { desc = "Exit terminal insert mode" })

-- Vim-style window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to up window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window' })

-- [[ Leader Remaps ]]

-- Leaderkey mapping
vim.g.mapleader = " "

-- Window remaps
vim.keymap.set('n', '<leader>w', '<C-w>w', { desc = "Switch between windows" })

-- Quicker scrolling
vim.keymap.set({'n', 'v'}, '<leader>j', '<C-d>zz', { desc = "Scroll down half page (centered)" })
vim.keymap.set({'n', 'v'}, '<leader>k', '<C-u>zz', { desc = "Scroll up half page (centered)" })


-- vim-commentary Keybindings
-- | Keybind | Action |
-- |---------|--------|
-- | gcc | Toggle comment on current line |
-- | gc{motion} | Toggle comment for motion (e.g., gcip = comment paragraph) |
-- | gc (visual) | Toggle comment on selected lines |
-- | gcgc | Toggle comment on current and next line |

-- TODO: May be worth adding some keymaps to nav btwn windows directly ( ex. CTRL-w + (h,j,k,l) )

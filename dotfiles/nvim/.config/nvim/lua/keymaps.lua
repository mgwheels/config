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

-- [[ Leader Remaps ]]

-- Leaderkey mapping
vim.g.mapleader = " "

-- Window remaps
vim.keymap.set('n', '<leader>w', '<C-w>w', { desc = "Switch between windows" })

-- Quicker scrolling
vim.keymap.set({'n', 'v'}, '<leader>j', '<C-d>zz', { desc = "Scroll down half page (centered)" })
vim.keymap.set({'n', 'v'}, '<leader>k', '<C-u>zz', { desc = "Scroll up half page (centered)" })


-- TODO: May be worth adding some keymaps to nav btwn windows directly ( ex. CTRL-w + (h,j,k,l) )

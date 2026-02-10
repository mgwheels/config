-- [[ Basic Remaps ]]

-- Center screen when searching with n
vim.keymap.set('n', 'n', 'nzzzv', { desc = "Next search result, centered" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Prior search result, centered" })

-- Remap x to allow deletes without cutting to clipboard
vim.keymap.set('n', 'x', '"_d', { desc = "Deletes a selection without cutting (Normal)" })
vim.keymap.set('n', 'xx', '"_dd', { desc = "Deletes a line without cutting (Normal)" })
vim.keymap.set('v', 'x', '"_d', { desc = "Deletes a selection without cutting (Visual)" })

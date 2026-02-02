-- Delete a selection without cutting it with `x` in Normal Mode
vim.keymap.set('n', 'x', '"_d')

-- Delete the whole line without cutting it with `xx` in Normal Mode

vim.keymap.set('n', 'xx', '"_dd')


-- Delete a selection without cutting it with `x` in Visual Mode
vim.keymap.set('v', 'x', '"_d')

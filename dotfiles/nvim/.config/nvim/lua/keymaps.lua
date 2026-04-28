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

-- Buffer keymaps
vim.keymap.set('n', ']b', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '[b', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', ';b', ':bd!<CR>', { desc = 'Close buffer and go to next' })

-- [[ Leader Remaps ]]

-- Leaderkey mapping
vim.g.mapleader = " "

-- Window remaps
vim.keymap.set('n', '<leader>w', '<C-w>w', { desc = "Switch between windows" })

-- Quicker scrolling
vim.keymap.set({ 'n', 'v' }, '<leader>j', '<C-d>zz', { desc = "Scroll down half page (centered)" })
vim.keymap.set({ 'n', 'v' }, '<leader>k', '<C-u>zz', { desc = "Scroll up half page (centered)" })

--[[ Keybinds for Folding:
  za         Toggle fold at cursor (built-in)
  zA         Toggle fold recursively (built-in)
  zo         Open fold (built-in)
  zO         Open fold recursively (built-in)
  zc         Close fold (built-in)
  zC         Close fold recursively (built-in)
  zR         Open ALL folds (built-in)
  zM         Close ALL folds (built-in)
  zm         Close one fold level (built-in)
  zr         Open one fold level (built-in)
  zj         Jump to next fold (built-in)
  zk         Jump to previous fold (built-in)
  [z         Jump to fold start (built-in)
  ]z         Jump to fold end (built-in)
  zf         Create manual fold (e.g. 3zf to fold 3 lines) (built-in)
--]]

-- TODO: May be worth adding some keymaps to nav btwn windows directly ( ex. CTRL-w + (h,j,k,l) )

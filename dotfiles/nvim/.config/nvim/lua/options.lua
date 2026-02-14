local opt = vim.opt

-- Hint: use `:h <option>` to figure out the meaning if needed.
opt.clipboard = 'unnamedplus'   -- use system clipboard
opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.mouse = 'a'                 -- allow mouse to be used in nvim

-- Tab
opt.tabstop = 4                  -- number of visual spaces per TAB
opt.softtabstop = 4              -- number of spaces in tab when editing
opt.shiftwidth = 4               -- insert 4 spaces on a tab
opt.expandtab = true             -- tabs are spaces, mainly because of Python

-- UI config
-- vim.cmd.colorscheme('slate')
opt.number = true               -- show absolute number
opt.relativenumber = true       -- add numbers to each line on the left side
opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
opt.splitbelow = true           -- open new vertical split bottom
opt.splitright = true           -- open new horizontal splits right
opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
opt.showmode = false 

-- Searching
opt.incsearch = true            -- search as characters are entered
opt.hlsearch = false            -- do not highlight matches
opt.ignorecase = true           -- ignore case in searches by default
opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Indentation Settings
opt.smartindent = true
opt.autoindent = true

-- Visual Settings
opt.showmatch = true
opt.matchtime = 2

-- Behavior Settings
opt.errorbells = false

-- Split Behavior
opt.splitbelow = true
opt.splitright = true

-- Command-line Completion
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Performance Improvements
opt.redrawtime = 10000
opt.maxmempattern = 20000

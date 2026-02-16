-- Hint: use `:h <option>` to figure out the meaning if needed.
local opt = vim.opt

-- General Settings
opt.clipboard = 'unnamedplus'   -- use system clipboard
opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.mouse = 'a'                 -- allow mouse to be used in nvim
opt.errorbells = false          -- No error bells
opt.autoread = true             -- Auto-reload files changed outside of nvim

-- Indent Settings
opt.tabstop = 2                  -- Number of visual spaces per TAB
opt.softtabstop = 2              -- Number of spaces in tab when editing
opt.shiftwidth = 2               -- Insert 2 spaces on a tab
opt.expandtab = true             -- Use spaces instead of tabs
opt.smartindent = true           -- Smart auto-indenting
opt.autoindent = true            -- Auto indent current line

-- Visual Settings
-- vim.cmd.colorscheme('slate')
opt.number = true               -- Show line number
opt.relativenumber = true       -- Show relative line number
opt.cursorline = true           -- Highlight cursor line
opt.termguicolors = true        -- Enable 24-bit RGB color in the TUI
opt.showmode = false            -- Don't display current mode
opt.showmatch = true            -- Highlight matching brackets
opt.matchtime = 2               -- How long to show matching bracket

-- Search Settings
opt.incsearch = true            -- Search as characters are entered
opt.hlsearch = false            -- Don't highlight matches
opt.ignorecase = true           -- Ignore case in searches by default ...
opt.smartcase = true            -- ... But make it case sensitive if an uppercase is entered

-- Split Behavior
opt.splitbelow = true           -- Open new vertical split bottom
opt.splitright = true           -- Open new horizontal splits right

-- Command-line Completion
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Performance Improvements
opt.redrawtime = 10000
opt.maxmempattern = 20000

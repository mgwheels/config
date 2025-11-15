-- Color Scheme
vim.cmd.colorscheme('slate')

-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Indentation Settings
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Visual Settings
vim.opt.showmatch = true
vim.opt.matchtime = 2

-- Behavior Settings
vim.opt.errorbells = false

-- Split Behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Command-line Completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Performance Improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

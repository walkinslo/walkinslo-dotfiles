local opt = vim.opt

-- Line numbers
opt.number = true

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Line Wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.iskeyword:append("-")

-- Cursor
opt.cursorline = false

-- Apperance
opt.termguicolors = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split
opt.splitright = true
opt.splitbelow = true

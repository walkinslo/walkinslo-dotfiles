vim.cmd('autocmd!')

vim.wo.number = true

vim.opt.title = true 
vim.opt.autoindent = true 
vim.opt.hlsearch = true 
vim.opt.backup = false 
vim.opt.showcmd = true 
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true 
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true 
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true 
vim.opt.si = true 
vim.opt.wrap = false 
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

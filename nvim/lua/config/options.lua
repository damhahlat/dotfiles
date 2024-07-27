vim.opt.number = true -- display numbers
vim.opt.relativenumber = true -- display numbers relative to line (helps with jumping around)
vim.opt.mouse = 'a' -- mouse stuff

vim.opt.ignorecase = true -- ignore case while searching
vim.opt.smartcase = true -- if uppercase search, only look for uppercase characters

vim.opt.hlsearch = false -- don't highlight past search results
vim.opt.wrap = false -- don't wrap text. it looks horrible

vim.opt.tabstop = 4 -- tab 4
vim.opt.shiftwidth = 4 -- tab 4. 8 is too much

vim.opt.expandtab = false -- keep tab as a tab. don't turn it into spaces

vim.opt.scrolloff = 7 -- start scrolling when 7 lines are left

vim.opt.fillchars = { eob = ' ' } -- fill end of buffer with spaces

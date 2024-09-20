vim.g.mapleader = " " -- set leader key to space
vim.g.maplocalleader = ","

vim.keymap.set({'n', 'x'}, '<leader>y', '"+y') -- for copy just do leader (space) and then y
vim.keymap.set({'n', 'x'}, '<leader>p', '"+p') -- for paste just do leader (space) and then p

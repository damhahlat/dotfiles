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

vim.g.mapleader = " " -- set leader key to space
vim.g.maplocalleader = "\\"

vim.keymap.set({'n', 'x'}, '<leader>y', '"+y') -- for copy just do leader (space) and then y
vim.keymap.set({'n', 'x'}, '<leader>p', '"+p') -- for paste just do leader (space) and then p


-- Straight from the lazy.nvim guide
-- Download lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({

	-- All my plugins go here
	spec = {
		{'folke/tokyonight.nvim'}, -- my colour scheme. tokyonight >>>> gruvbox
		{'famiu/feline.nvim'}, -- status bar
		{'psliwka/vim-smoothie'}, -- smooth scrolling
		{'github/copilot.vim'}, -- copilot
		{'nvim-treesitter/nvim-treesitter'}, -- for syntax highlighting
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- manually turned this off because it was annoying
	checker = { enabled = false },
})
-- end lazy.nvim stuff


vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight') -- i want tokyonight

require('feline').setup() -- status bar

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "cpp", "arduino" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
  },
}

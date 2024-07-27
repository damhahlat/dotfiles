return {
	{
		"rose-pine/neovim",
		config = function()
			vim.opt.termguicolors = true
			vim.cmd("colorscheme rose-pine-moon")
		end,
	}
}

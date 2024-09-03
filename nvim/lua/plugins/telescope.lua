return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { ".git/", "node_modules/" },
					prompt_prefix = "❯ ",
					selection_caret = "❯ ",
					layout_config = {
						prompt_position = "top",
					},
					mappings = {
						i = {
							["<C-j>"] = require("telescope.actions").move_selection_next,
							["<C-k>"] = require("telescope.actions").move_selection_previous,
						},
					},
				},
			})
		end,
	}
}

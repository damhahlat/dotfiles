return {
	{
		'neovim/nvim-lspconfig',

		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"VonHeikemen/lsp-zero.nvim",
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/nvim-cmp',
			config = function()
				require("mason").setup()
			end,
		},

		config = function()
			-- here you can setup the language servers
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({buffer = bufnr})
			end)

			-- to learn how to use mason.nvim
			-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = {"lua_ls", "clangd", "pylsp", "arduino_language_server"},
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({})
					end,
				},
			})
		end,
	}
}

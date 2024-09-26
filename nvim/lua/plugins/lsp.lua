return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "elixirls", "lua_ls", "ruby_lsp", "ts_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.elixirls.setup({
				cmd = { vim.fn.stdpath("data") .. "/mason/packages/elixir-ls/language_server.sh" },
			})

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.ruby_lsp.setup({})

			lspconfig.ts_ls.setup({})
		end,
	},
}

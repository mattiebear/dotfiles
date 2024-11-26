return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "elixirls", "emmet_language_server", "lua_ls", "rust_analyzer", "ts_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.elixirls.setup({
				capabilities = capabilities,
				cmd = { vim.fn.stdpath("data") .. "/mason/packages/elixir-ls/language_server.sh" },
			})

			lspconfig.emmet_language_server.setup({
				capabilities = capabilities,
				filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "heex", "svelte" },
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
		end,
	},
}

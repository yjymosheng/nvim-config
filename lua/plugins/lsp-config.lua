return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls" , "clangd","rust_analyzer"}
			})
		end

	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable('lua_ls')
			vim.lsp.config('lua_ls',{
				filetypes = { 'lua' },
			})

			vim.lsp.enable('clangd')
			vim.lsp.config('clangd',{
				filetypes = {'c', 'cpp'},
			})
		end
	},

}

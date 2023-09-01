local plugins = {

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"rust_analyzer",
				"gopls",
				"jsonnet-language-server",
			},
		},
	},

	-- Override nvim-tree to enable netrw
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			disable_netrw = false,
			hijack_netrw = false,
		},
	},

	{ "williamboman/mason-lspconfig.nvim" },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",

				"json",
				"go",
				"rust",
				"jsonnet",
				"python",
				"terraform",
			},
		},
	},
}

return plugins

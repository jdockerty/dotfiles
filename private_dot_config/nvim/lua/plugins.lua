-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("folke/tokyonight.nvim")

	use({ "darrikonn/vim-gofmt", run = ":GoUpdateBinaries" })

	use("jiangmiao/auto-pairs")
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim") -- Dependency for telescope, this also requires ripgrep (rg) to be installed too
	use("ThePrimeagen/harpoon")
	use("gruvbox-community/gruvbox")

	use("Vimjas/vim-python-pep8-indent")

	-- Syntax/highlighting
	use("hashivim/vim-terraform")
	use("google/vim-jsonnet")

	-- Git and undo helpers
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("vim-airline/vim-airline")
	use("airblade/vim-gitgutter")

	use("godlygeek/tabular")
	use("preservim/vim-markdown")
	use("axelf4/vim-strip-trailing-whitespace")

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	-- g++ dependency is also required
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	use("tpope/vim-surround")

	use("907th/vim-auto-save")
end)

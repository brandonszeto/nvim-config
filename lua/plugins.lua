return require("packer").startup(function()
	-- Plugin Manager
	use("wbthomason/packer.nvim")

	-- Themes
	use("ellisonleao/gruvbox.nvim")
	use("xiyaowong/nvim-transparent")
	use("projekt0n/github-nvim-theme")
	use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim")

	use("neovim/nvim-lspconfig")
	use("preservim/nerdtree")
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use("nvim-treesitter/nvim-treesitter")

	-- Formatter
	use({
		"mhartington/formatter.nvim",
		config = [[require('config.formatter')]],
		setup = [[require('config.formatter_setup')]],
	})

	-- Vimtex
	use("lervag/vimtex")

	-- Airline
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")

end)

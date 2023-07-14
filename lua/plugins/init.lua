return {
	-- Faster startup
	"lewis6991/impatient.nvim",

	-- Themes
	"ellisonleao/gruvbox.nvim",
	-- 'xiyaowong/nvim-transparent',

	-- Orgmode
	{
		"nvim-orgmode/orgmode",
		config = [[require('config.orgmode')]],
	},

	-- NvimTree
	{
		"nvim-tree/nvim-tree.lua",
		config = [[require('config.nvimtree')]],
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = [[require('config.treesitter')]],
		-- dependencies = { "p00f/nvim-ts-rainbow" }, -- ugly af but maybe
	},

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		config = [[require('config.lualine')]],
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},

	-- Tmux integration
	"christoomey/vim-tmux-navigator",

	-- Formatter
	{
		"mhartington/formatter.nvim",
		config = [[require('config.formatter')]],
		setup = [[require('config.formatter_setup')]],
	},

	-- VimTeX to build and compile LaTeX with NeoVim
	{
		"lervag/vimtex",
		config = [[require('config.vimtex')]],
		ft = { "tex" },
	},

	{
		"iamcco/markdown-preview.nvim",
		config = [[require('config.markdown_preview')]],
		build = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	"tpope/vim-commentary",
	"tpope/vim-surround",
	"github/copilot.vim",

	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
}

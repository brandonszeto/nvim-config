local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Reload nvim on write to plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Pop-up window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Plugin Manager
	use("wbthomason/packer.nvim")

	-- Faster startup
	use("lewis6991/impatient.nvim")

	-- Themes
	use({ "ellisonleao/gruvbox.nvim" })
	-- use("xiyaowong/nvim-transparent")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
		},
		config = [[require('config.telescope')]],
	})

	-- Orgmode
	use({
		"nvim-orgmode/orgmode",
		config = [[require('config.orgmode')]],
	})

	-- NvimTree
	use({
		"nvim-tree/nvim-tree.lua",
		config = [[require('config.nvimtree')]],
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		config = [[require('config.treesitter')]],
		-- requires = { "p00f/nvim-ts-rainbow" }, -- ugly af but maybe
	})

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		config = [[require('config.lualine')]],
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Tmux integration
	use("christoomey/vim-tmux-navigator")

	-- Formatter
	use({
		"mhartington/formatter.nvim",
		config = [[require('config.formatter')]],
		setup = [[require('config.formatter_setup')]],
	})

	-- Completion Sources
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	-- Completion snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- Completion
	use({
		"hrsh7th/nvim-cmp",
		config = [[require('config.cmp')]],
	})

	-- VimTeX to build and compile LaTeX with NeoVim
	use({
		"lervag/vimtex",
		config = [[require('config.vimtex')]],
		ft = { "tex" },
	})

	-- LSP
	-- use("williamboman/nvim-lsp-installer")
	-- use({
	-- 	"neovim/nvim-lspconfig",
	-- 	config = [[require('config.lsp')]],
	-- })

	use("tpope/vim-commentary")
	use("tpope/vim-surround")

	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = [[require('config.gitsigns')]],
	})

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

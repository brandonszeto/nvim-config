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

	-- Themes
	use("ellisonleao/gruvbox.nvim")
	-- use("xiyaowong/nvim-transparent")

	use("nvim-lua/plenary.nvim") -- Provides extra modules
	use("nvim-lua/popup.nvim") -- Implementation of pop-up API

	-- Faster startup
	use("lewis6991/impatient.nvim")

	use("tpope/vim-commentary")
	use("tpope/vim-surround")

	-- Nvim-tree for nice file explorer, support for dumb icons
	use({
		"nvim-tree/nvim-tree.lua",
		config = [[require('config.nvimtree')]],
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Treesitter for better highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		config = [[require('config.treesitter')]],
		-- requires = { "p00f/nvim-ts-rainbow" }, -- ugly af but maybe
	})

	-- Lualine for status line
	use({
		"nvim-lualine/lualine.nvim",
		config = [[require('config.lualine')]],
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- For seamless tmux integration
	use("christoomey/vim-tmux-navigator")

	-- Format on write
	use({
		"mhartington/formatter.nvim",
		config = [[require('config.formatter')]],
		setup = [[require('config.formatter_setup')]],
	})

	-- use("hrsh7th/nvim-cmp")
	-- use("hrsh7th/cmp-buffer")
	-- use("hrsh7th/cmp-path")
	-- use("saadparwaiz1/cmp_luasnip")
	-- use("hrsh7th/cmp-nvim-lsp")
	-- use("hrsh7th/cmp-nvim-lua")
	-- use("L3MON4D3/LuaSnip")
	-- use("rafamadriz/friendly-snippets")

	-- VimTeX to build and compile LaTeX with NeoVim
	use({
		"lervag/vimtex",
		config = [[require('config.vimtex')]],
		ft = { "tex" },
	})

	use("neovim/nvim-lspconfig")

	-- Show changes to file
	use({
		"lewis6991/gitsigns.nvim",
		-- requires = { "nvim-lua/plenary.nvim" },
		config = [[require('config.gitsigns')]],
	})

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

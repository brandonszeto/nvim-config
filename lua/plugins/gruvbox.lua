-- Theme
return {
	lazy = false,
	priority = 1000,
	"ellisonleao/gruvbox.nvim",
	config = function()
		require("gruvbox").setup()
		vim.cmd([[colorscheme gruvbox]])
		vim.cmd([[hi! link SignColumn  Normal]])
	end,
}

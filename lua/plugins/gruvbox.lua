return {
	-- Theme
	"ellisonleao/gruvbox.nvim",
	config = function(plugin)
		require("gruvbox").setup()
		vim.cmd([[colorscheme gruvbox]])
		vim.cmd([[hi! link SignColumn  Normal]])
	end,
}

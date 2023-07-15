return {
	"nvim-tree/nvim-tree.lua",

	config = function()
		require("nvim-tree").setup()
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

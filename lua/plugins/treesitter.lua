return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "rust", "cpp", "python", "html", "javascript", "css" },
			sync_install = false,
			ignore_install = { "" },
			highlight = {
				enable = true,
				disable = { "" },
				additional_vim_regex_highlighting = true,
			},
			indent = { enable = true, disable = { "yaml" } },
		})
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.api.nvim_command("set nofoldenable")
	end,
}

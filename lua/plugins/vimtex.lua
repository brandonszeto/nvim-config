-- VimTeX to build and compile LaTeX with NeoVim
return {
	"lervag/vimtex",
	config = function(plugin)
		vim.g.tex_flavor = "latex"
		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_view_skim_sync = 1
		vim.g.vimtex_view_skim_activate = 1
	end,
	ft = { "tex", "latex" },
}

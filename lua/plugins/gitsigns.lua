return {
	"lewis6991/gitsigns.nvim",
	config = function()
		-- Manually set these to avoid issues with colorschemes
		vim.cmd("highlight GitSignsAdd guifg=#b8bb26 guibg=NONE")
		vim.cmd("highlight GitSignsChange guifg=#458588 guibg=NONE")
		vim.cmd("highlight GitSignsDelete guifg=#CC241D guibg=NONE")
		vim.cmd("redraw")

		require("gitsigns").setup({
			signs = {
				add = {
					text = "│",
					highlight = "GitSignsAdd",
					numhl = "GitSignsAddNr",
					linehl = "GitSignsAddLn",
				},
				change = {
					text = "│",
					highlight = "GitSignsChange",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
				delete = {
					text = "_",
					highlight = "GitSignsDelete",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				topdelete = {
					text = "‾",
					highlight = "GitSignsDelete",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				changedelete = {
					text = "~",
					highlight = "GitSignsChange",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
				untracked = {
					text = "┆",
					highlight = "GitSignsAdd",
					numhl = "GitSignsAddNr",
					linehl = "GitSignsAddLn",
				},
			},
			signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
			numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
			linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
			word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
			watch_gitdir = {
				follow_files = true,
			},
			attach_to_untracked = true,
			current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
				delay = 1000,
				ignore_whitespace = false,
			},
			current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
			sign_priority = 6,
			update_debounce = 100,
			status_formatter = nil, -- Use default
			max_file_length = 40000, -- Disable if file is longer than this (in lines)
			preview_config = {
				-- Options passed to nvim_open_win
				border = "single",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
			yadm = {
				enable = false,
			},
		})
	end,
}

-- local util = require "formatter.util"

function clangformat()
	local fn = vim.api.nvim_buf_get_name(0):gsub(".*/", "")
	return {
		exe = "clang-format",
		args = { "--assume-filename", fn },
		stdin = true,
		cwd = vim.fn.expand("%:p:h"),
	}
end

local function stylua()
	return {
		exe = "stylua",
		args = {
			"--search-parent-directories",
			"-",
		},
		stdin = true,
	}
end

local function latexindent()
	return {
		exe = "latexindent",
		stdin = true,
	}
end

require("formatter").setup({
	logging = false,
	filetype = {

		c = { clangformat },

		cpp = { clangformat },

		java = { clangformat },

		lua = { stylua },

		tex = { latexindent },
	},
})

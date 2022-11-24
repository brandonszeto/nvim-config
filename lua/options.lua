local cmd = vim.cmd

local options = {
	-- Visual options
	relativenumber = true,
	number = true,
	cursorline = true,
	showtabline = 2,
	showmode = true,

	-- Window options 
	splitright = true,
	splitbelow = true,

	-- Miscellaneous options
	clipboard = "unnamedplus",
	smartindent = true,
	mouse = "a",

	-- Searching options
	ignorecase = true,
	hlsearch = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Make Background Transparent
require("transparent").setup({
	enable = true,
})

-- Set Colorscheme
cmd("colorscheme nordfox")

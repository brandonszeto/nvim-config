local cmd = vim.cmd

local options = {
	-- Visual options
	relativenumber = true,
	number = true,
	cursorline = true,
	showmode = true,

	-- Tab options
	expandtab = true,
	smarttab = true,
	tabstop = 4,
	smartindent = true,

	-- Above tab options
	showtabline = 1,

	-- Window options
	splitright = true,
	splitbelow = true,

	-- Miscellaneous options
	clipboard = "unnamedplus",
	scrolloff = 2,

	-- Enables mouse
	mouse = "a",

	-- Searching options
	ignorecase = true,
	smartcase = true,
	hlsearch = true,
	incsearch = true,

	-- File options
	swapfile = false,
	backup = false,
	writebackup = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Make Background Transparent
-- require("transparent").setup({
-- 	enable = false,
-- })

-- Set Colorscheme
cmd("colorscheme gruvbox")

-- For help, do :help options

local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = {},
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = true,
	showtabline = 1,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,
	number = true,
	laststatus = 3,
	showcmd = false,
	ruler = false,
	numberwidth = 4,
	textwidth = 80,
	signcolumn = "no",
	wrap = true,
	scrolloff = 2,
	sidescrolloff = 8,
	guifont = "monospace:h17",
	relativenumber = true,
	smarttab = true,
	smartcase = true,
	incsearch = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Set Colorscheme
vim.cmd("colorscheme gruvbox")

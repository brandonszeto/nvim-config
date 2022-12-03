-- Options
require("options")

-- Plugins Configurations
require("plugins")

-- VimTex Configurations
require("vimtex")

-- Airline Configurations
require("airline")

-- Keymap Configurations
require("keymaps")

-- Make Background Transparent
require("transparent").setup({
	enable = false,
})

-- Set Colorscheme
vim.cmd("colorscheme gruvbox")

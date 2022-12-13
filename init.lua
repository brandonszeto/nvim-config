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

-- Nvim Tree
require("nvim-tree").setup()

-- Treesitter Configurations
require("treesitter")

-- Make Background Transparent
-- require("transparent").setup({
-- 	enable = false,
-- })

-- Set Colorscheme
vim.cmd("colorscheme gruvbox")

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "",
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	-- rainbow = {
	-- 	enable = false,
	-- 	-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
	-- 	extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
	-- 	max_file_lines = nil, -- Do not enable for files with more than n lines, int
	-- 	-- colors = {}, -- table of hex strings
	-- 	-- termcolors = {} -- table of colour name strings
	-- },
})

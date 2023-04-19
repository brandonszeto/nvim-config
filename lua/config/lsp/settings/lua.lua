return {
	settings = {
		Lua = {
			diagnostics = {
				global = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$vimruntime/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}

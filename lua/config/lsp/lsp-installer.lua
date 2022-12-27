local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("config.lsp.handlers").on_attach,
		capabilities = require("config.lsp.handlers").capabilities,
	}

	if server.name == "sumneko_lua" then
		local sumneko_opts = require("config.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server.name == "clangd" then
		local clangd_opts = require("config.lsp.settings.clangd")
		opts = vim.tbl_deep_extend("force", clangd_opts, opts)
	end

	if server.name == "pyright" then
		local pyright_opts = require("config.lsp.settings.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if server.name == "rust_analyzer" then
		local rust_analyzer_opts = require("config.lsp.settings.rust_analyzer")
		opts = vim.tbl_deep_extend("force", rust_analyzer_opts, opts)
	end

	server:setup(opts)
end)

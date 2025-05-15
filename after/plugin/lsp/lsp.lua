-- for knowing which one to install, do :help lspconfig-all
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"angularls",
		"ast_grep",
		"clangd",
		"css_variables",
		"eslint",
		"gopls",
		"html",
		"lua_ls",
		"pylsp",
		"quick_lint_js",
		"rust_analyzer",
		"ts_ls",
		"vuels",
	},
	automatic_installation = true,
})
local on_attatch = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, {})
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.angularls.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.ast_grep.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.clangd.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.css_variables.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.emmet_ls.setup({
	on_attach = on_attatch,
	filetypes = { "html", "tmpl", "templ" },
	capabilities = capabilities,
})

lspconfig.eslint.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.gopls.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.html.setup({
	on_attach = on_attatch,
	filetypes = { "html", "tmpl" },
	capabilities = capabilities,
})

lspconfig.lua_ls.setup({
	on_attatch = on_attatch,
	capabilities = capabilities,
})

lspconfig.pylsp.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.quick_lint_js.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
	on_attatch = on_attatch,
	capabilities = capabilities,
	filetypes = { "rust" },
	settings = {
		["rust_analyzer"] = {
			cargo = {
				allFeatures = true,
			},
		},
	},
})
lspconfig.templ.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.ts_ls.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

lspconfig.vuels.setup({
	on_attach = on_attatch,
	capabilities = capabilities,
})

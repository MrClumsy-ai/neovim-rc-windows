require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettier" },
		vue = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		go = { "ast_grep" },
		markdown = { "prettier" },
		-- Add more as needed
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})

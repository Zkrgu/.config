require("conform").setup({
	notify_on_error = false,
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
	},
})

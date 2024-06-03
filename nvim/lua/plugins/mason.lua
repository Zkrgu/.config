require("mason").setup({})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"js-debug-adapter",
		"kotlin-debug-adapter",
		"kotlin-language-server",
		"lua-language-server",
		"prettierd",
		"pyright",
		"sonarlint-language-server",
		"typescript-language-server",
		"stylua",
	},
})

require("sonarlint").setup({
	server = {
		cmd = {
			"sonarlint-language-server",
			"-stdio",
			"-analyzers",
			table.concat({ vim.fn.stdpath("data"), "mason", "share", "sonarlint-analyzers", "sonarjs.jar" }, "/"),
			table.concat({ vim.fn.stdpath("data"), "mason", "share", "sonarlint-analyzers", "sonarhtml.jar" }, "/"),
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
})

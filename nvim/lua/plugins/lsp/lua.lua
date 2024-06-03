require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			workspace = {
				checkThirdParty = false,
				library = {
					"${3rd}/luv/library",
					unpack(vim.api.nvim_get_runtime_file("", true)),
					vim.api.nvim_get_proc,
				},
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})

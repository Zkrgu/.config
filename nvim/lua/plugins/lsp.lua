return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {
					registries = {
						"github:mason-org/mason-registry",
						"file:~/projects/mason-registry",
					},
					ui = {
						border = "rounded",
					},
				},
			},
			"mason-org/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("lspconfig")
			local servers = {
				pyright = {},
				rust_analyzer = {},
				kotlin_lsp = {},
				lua_ls = {
					settins = {
						Lua = {
							runtime = { version = "LuaJIT" },
							workspace = {
								checkThirdParty = false,
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				},
			}

			require("mason-tool-installer").setup({
				ensure_installed = vim.tbl_keys(servers or {}),
			})

			require("mason-lspconfig").setup({
				automatic_enable = vim.tbl_keys(servers or {}),
				ensure_installed = {},
			})

			for name, server_config in pairs(servers) do
				vim.lsp.config(name, server_config or {})
			end
		end,
	},
}

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
				rust_analyzer = {
					settings = {
						["rust-analyzer"] = {
							imports = {
								granularity = {
									group = "module",
								},
								prefix = "self",
							},
							cargo = {
								buildScripts = {
									enable = true,
								},
							},
							procMacro = {
								enable = true,
							},
						},
					},
				},
				kotlin_language_server = {},
				kotlin_lsp = {},
				eslint = {},
				gopls = {},
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

			local ensure_installed = vim.tbl_keys(servers or {})
			vim.list_extend(ensure_installed, {
				"ts_ls",
			})

			require("mason-tool-installer").setup({
				ensure_installed = ensure_installed,
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
	{
		"pmizio/typescript-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			handlers = {
				["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
					border = "rounded"
				})
			}
		},
	},
	{
		"scalameta/nvim-metals",
		config = function()
			local metal_config = require("metals").bare_config()

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "scala", "sbt", "java" },
				callback = function()
					require("metals").initialize_or_attach(require("metals").bare_config())
				end,
				group = vim.api.nvim_create_augroup("nvim-metals", { clear = true }),
			})
		end,
	}
}

return {
	{
		"nvim-lualine/lualine.nvim",
		opts = { theme = "dracula" },
	},
	{
		"numToStr/Comment.nvim",
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring", opts = { enable_autocmd = false } },
		config = function()
			require("Comment").setup({
				pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
			})
		end,
	},
	{
		"echasnovski/mini.nvim",
		main = "mini.surround",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = { "windwp/nvim-ts-autotag", opts = {} },
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = function(bufnr)
				if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
					return
				end
				return {
					timeout_ms = 500,
					lsp_format = "fallback",
				}
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
		},
		init = function()
			vim.api.nvim_create_user_command("FormatDisable", function(args)
				if args.bang then
					vim.b.disable_autoformat = true
				else
					vim.g.disable_autoformat = true
				end
			end, {
				desc = "Disable autoformat on save",
				bang = true,
			})
			vim.api.nvim_create_user_command("FormatEnable", function(args)
				if args.bang then
					vim.b.disable_autoformat = false
				else
					vim.g.disable_autoformat = false
				end
			end, {
				desc = "Enable autoformat on save",
				bang = true,
			})
		end,
	},
}

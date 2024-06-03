require("packer").startup(function(use)
	-- package manager
	use("wbthomason/packer.nvim")
	-- file explorer
	use("nvim-tree/nvim-tree.lua")
	-- syntax highlighting
	use("nvim-treesitter/nvim-treesitter")
	-- code completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-omni")
	use("hrsh7th/cmp-cmdline")
	-- language server
	use("neovim/nvim-lspconfig")
	-- color scheme
	use("maxmx03/dracula.nvim")
	-- status line
	use("nvim-lualine/lualine.nvim")
	-- file search
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- git plugin
	use("tpope/vim-fugitive")
	-- sticky block (eg. function definition)
	use("nvim-treesitter/nvim-treesitter-context")
	-- typescript lsp
	use({
		"pmizio/typescript-tools.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	})
	-- lsp installer
	use("williamboman/mason.nvim")
	use("WhoIsSethDaniel/mason-tool-installer.nvim")
	-- code formatter
	use("stevearc/conform.nvim")
	-- Debugger
	use("mfussenegger/nvim-dap")
	use({ "rcarriga/nvim-dap-ui", requires = { "nvim-neotest/nvim-nio" } })
	use("theHamsta/nvim-dap-virtual-text")
	use("mfussenegger/nvim-dap-python")
	-- Sonarlint
	use("https://gitlab.com/schrieveslaach/sonarlint.nvim")
	-- Quick comment
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- Small plugins all-in-one
	use("echasnovski/mini.nvim")
	-- Autopairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
end)

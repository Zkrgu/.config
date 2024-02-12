require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-treesitter/nvim-treesitter'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-omni'
	use 'hrsh7th/cmp-cmdline'
	use 'neovim/nvim-lspconfig'
	use 'maxmx03/dracula.nvim'
	use 'nvim-lualine/lualine.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'tpope/vim-fugitive'
	use 'sbdchd/neoformat'
	use 'nvim-treesitter/nvim-treesitter-context'
end)

return {
	{
		"maxmx03/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[
			colorscheme dracula
			hi Normal guibg=none ctermbg=none
			hi NonText guibg=none ctermbg=none
			hi NvimTree guibg=none ctermbg=none
			hi TelescopeNormal guibg=none ctermbg=none
			hi TelescopeBorder guibg=none ctermbg=none
			hi WinSeparator guibg=none ctermbg=none
			hi NormalFloat guibg=none ctermbg=none
			hi FloatBorder guibg=none ctermbg=none
			]])
		end,
	},
}

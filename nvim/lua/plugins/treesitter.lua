require('nvim-treesitter.configs').setup({
	ensure_installed = {
		"comment",
		"html",
		"java",
		"javascript",
		"json",
		"kotlin",
		"latex",
		"lua",
		"python",
		"regex",
		"rust",
		"tsx",
		"typescript",
		"yaml",
	},
	auto_install = true,
	modules = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		indent = {
			enable = true,
		},
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
		},
	},
})
require('treesitter-context').setup{
    enable = true,
    max_lines = 0,
    min_window_height = 0,
    line_numbers = true,
    mode = 'topline'
}

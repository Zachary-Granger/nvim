vim.pack.add({
	{
		src = 'https://github.com/nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim',
			-- optional but recommended
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
	}
})

require('telescope').setup {
	defaults = {
		sorting_strategy = 'ascending',
		layout_config = {
			width = 0.95,
			prompt_position = 'top',
			preview_width = 0.5,
		}
	}
}

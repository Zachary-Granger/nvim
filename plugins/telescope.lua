vim.pack.add({
	{
		src = 'https://github.com/nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim',
			-- optional but recommended
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
	}
})

local ignore_filetypes = {
	"%.tscn", "%.tres", "%.png", "%.uid"
}
require('telescope').setup {
	defaults = {
		sorting_strategy = 'ascending',
		file_ignore_patterns = ignore_filetypes,
		layout_config = {
			width = 0.95,
			prompt_position = 'top',
			preview_width = 0.5,
		}
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', function()
	builtin.buffers({
		sort_mru = true,
		ignore_current_buffer = true
	})
end, { desc = 'Search buffers' })

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Search files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep file contents' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Search help tags' })

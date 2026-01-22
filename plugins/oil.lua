vim.pack.add({
	{ src = 'https://github.com/stevearc/oil.nvim' }
})

require('oil').setup({
	view_options = {
		show_hidden = false,
		is_hidden_file = function(name, _)
			return vim.startswith(name, '.') or vim.endswith(name, ".uid")
		end
	}
})

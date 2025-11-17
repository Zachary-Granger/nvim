vim.pack.add({
	{ src = 'https://github.com/folke/which-key.nvim' }
})

local wk = require('which-key')
wk.add ({
	{ '<leader>f', group = 'fuzzy find' },
	{ '<leader>l', group = 'lsp' }
})

vim.pack.add({
	{
		src = 'https://github.com/pmizio/typescript-tools.nvim',
		dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
	}
})
require("typescript-tools").setup {}

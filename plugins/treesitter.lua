vim.pack.add({
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' }
})

require("nvim-treesitter.configs").setup({
	ensure_installed = { 'gdscript', 'godot_resource', 'gdshader', 'java', 'tsx', 'html', 'css' },
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true}
})

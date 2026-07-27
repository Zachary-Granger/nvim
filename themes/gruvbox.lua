vim.pack.add({
	"https://github.com/motaz-shokry/gruvbox.nvim",
})

require("gruvbox").setup({
	styles = {
		transparency = true,
	}
})

vim.cmd("colorscheme gruvbox")

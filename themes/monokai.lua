vim.pack.add({
	"https://github.com/cpea2506/one_monokai.nvim",
})

require("one_monokai").setup({
	transparent = true,
	highlights = function(colors)
		return {
			["Type"] = { fg = colors.orange },
			["@variable.parameter"] = { fg = colors.aqua },
			-- ["@variable"] = { fg = colors.aqua },
		}
	end
})

vim.cmd("colorscheme one_monokai")

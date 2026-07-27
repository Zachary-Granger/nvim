vim.pack.add({
	"https://github.com/bjarneo/aether.nvim",
})

require("aether").setup({
	--optional configurations here
	disable_italics = false,
	colors = {
    -- Monotone shades (base00-base07)
    base00 = "#0f0f0f", -- Default background
    base01 = "#5e5959", -- Lighter background (status bars)
    base02 = "#0f0f0f", -- Selection background
    base03 = "#5e5959", -- Comments, invisibles
    base04 = "#e6caab", -- Dark foreground
    base05 = "#eadccc", -- Default foreground
    base06 = "#eadccc", -- Light foreground
    base07 = "#e6caab", -- Light background

    -- Accent colors (base08-base0F)
    base08 = "#e25d6c", -- Variables, errors, red
    base09 = "#e9838f", -- Integers, constants, orange
    base0A = "#f4bb54", -- Classes, types, yellow
    base0B = "#cea37f", -- Strings, green
    base0C = "#e8ab3b", -- Support, regex, cyan
    base0D = "#e2be8a", -- Functions, keywords, blue
    base0E = "#f66151", -- Keywords, storage, magenta
    base0F = "#edb95a", -- Deprecated, brown/yellow
	}
})

vim.cmd("colorscheme aether")

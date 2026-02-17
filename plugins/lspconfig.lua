-- See list of LSP's here, which need to be installed through Mason
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

vim.pack.add({
	{ src = 'https://github.com/neovim/nvim-lspconfig' }
})

vim.lsp.config('gdscript', {
	name = 'godot',
	cmd = vim.lsp.rpc.connect('127.0.0.1', 6005)
})

-- Add vim to runtime so that lua doesn't throw a bunch of unnecessary warnings
vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
})

vim.lsp.enable({ 'gdscript', 'gdshader_lsp', 'lua_ls', 'jdtls', 'html', 'cssls' })

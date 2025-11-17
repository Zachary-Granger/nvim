-- See list of LSP's here, which need to be installed through the package manager (yay) in order to be enabled
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

vim.pack.add({
	{ src = 'https://github.com/neovim/nvim-lspconfig' }
})

vim.lsp.config('gdscript', {
	name = 'godot',
	cmd = vim.lsp.rpc.connect('127.0.0.1', 6005)
})

-- Automatic suggestions while typing instead of needing ctrl-x + ctrl-o
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
vim.cmd('set completeopt+=noselect')

vim.lsp.enable({ 'gdscript', 'gdshader_lsp', 'lua_ls' })

vim.g.mapleader = ' '

-- keep movement centered
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half page up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half page down' })

-- Plugin keybinds
vim.keymap.set('n', '-', ':Oil<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format' })
-- vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { desc = 'References' })
vim.keymap.set('n', '<leader>lr', ':Telescope lsp_references<CR>', { desc = 'References' })
vim.keymap.set('n', '<leader>lR', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Goto definition' })
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { desc = 'Goto declaration' })
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, { desc = 'Code Action' })

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'search files' })
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers<CR>', { desc = 'search buffers' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'grep files' })
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'search help tags' })

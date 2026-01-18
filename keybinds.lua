vim.g.mapleader = ' '

-- keep movement centered
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half page up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half page down' })

-- Plugin keybinds
vim.keymap.set('n', '-', ':Oil<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format' })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { desc = 'References' })
vim.keymap.set('n', '<leader>lR', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Goto definition' })
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { desc = 'Goto declaration' })
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, { desc = 'Code Action' })

vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { desc = 'search files' })
vim.keymap.set('n', '<leader><leader>', ':FzfLua buffers<CR>', { desc = 'search buffers' })
vim.keymap.set('n', '<leader>fg', ':FzfLua grep<CR>', { desc = 'grep files' })
vim.keymap.set('n', '<leader>ft', ':FzfLua tags<CR>', { desc = 'search project tags' })
vim.keymap.set('n', '<leader>fk', ':FzfLua keymaps<CR>', { desc = 'search key mappings' })
vim.keymap.set('n', '<leader>fm', ':FzfLua marks<CR>', { desc = 'search marks' })

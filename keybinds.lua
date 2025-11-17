vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>', { desc = 'source configuration' })

-- Plugin keybinds
vim.keymap.set('n', '-', ':Oil<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'format' })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, {desc = 'references' })
vim.keymap.set('n', '<leader>lR', vim.lsp.buf.rename, {desc = 'rename' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, {desc = 'Goto definition' })

vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { desc = 'search files' })
vim.keymap.set('n', '<leader><leader>', ':FzfLua buffers<CR>', { desc = 'search buffers' })
vim.keymap.set('n', '<leader>fg', ':FzfLua grep<CR>', { desc = 'grep files' })
vim.keymap.set('n', '<leader>ft', ':FzfLua tags<CR>', { desc = 'search project tags' })
vim.keymap.set('n', '<leader>fk', ':FzfLua keymaps<CR>', { desc = 'search key mappings' })
vim.keymap.set('n', '<leader>fm', ':FzfLua marks<CR>', { desc = 'search marks' })

vim.g.mapleader = ' '

-- keep movement centered
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half page up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half page down' })

-- Plugin keybinds
vim.keymap.set('n', '-', ':Oil<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format' })
vim.keymap.set('n', '<leader>lr', ':Telescope lsp_references<CR>', { desc = 'References' })
vim.keymap.set('n', '<leader>lR', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Goto definition' })
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { desc = 'Goto declaration' })
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, { desc = 'Code Action' })

-- Telescope keybinds are in the plugin definition

vim.keymap.set('n', '<leader>db', ':DapToggleBreakpoint<CR>', { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<leader>dc', ':DapContinue<CR>', { desc = 'Continue debugging' })
vim.keymap.set('n', '<leader>do', ':DapStepOver<CR>', { desc = 'Step over' })
vim.keymap.set('n', '<leader>do', ':DapStepInto<CR>', { desc = 'Step into' })

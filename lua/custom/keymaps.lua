vim.keymap.set('n', '\\k', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = 'Format buffer' })

vim.keymap.set('n', '\\s', vim.cmd.write, { desc = 'Format and save buffer' })

vim.keymap.set('n', '\\t', function()
  vim.cmd [[ Neotree toggle ]]
end, { desc = 'Toggle Neotree' })

-- Change made here to avoid conflict in init.lua
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

return {
  vim.keymap.set('n', '<leader>bd', ':bdelete!<CR>', { desc = '[B]uffer [D]elete' }),
  vim.keymap.set('n', '<leader>bc', ':close<CR>', { desc = '[B]uffer [C]lose' }),

  -- Neo-tree keymaps
  vim.keymap.set('n', '<leader>ntt', ':Neotree toggle<CR>', { desc = '[N]eo[T]ree [T]oggle' }),
  vim.keymap.set('n', '<leader>nto', ':Neotree show<CR>', { desc = '[N]eo[T]ree [O]pen' }),
  vim.keymap.set('n', '<leader>ntc', ':Neotree close<CR>', { desc = '[N]eo[T]ree [C]lose' }),

  -- Jumplist navigation
  vim.keymap.set('n', '<leader>jp', '<C-o>', { desc = '[J]ump [P]revious (back)' }),
  vim.keymap.set('n', '<leader>jn', '<C-i>', { desc = '[J]ump [N]ext (forward)' }),
  vim.keymap.set('n', '<leader>jl', ':Telescope jumplist<CR>', { desc = '[J]ump [L]ist' }),

  -- Cycle through tabs
  vim.keymap.set('n', 'tn', ':tabNext<CR>', { desc = '[T]ab[N]ext' }),

  -- Open Git status in Telescope
  vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>', { desc = '[G]it [S]tatus' }),

  -- Todo Telescope
  vim.keymap.set('n', '<leader>tt', ':TodoTelescope<CR>', { desc = '[T]odo [T]elescope' }),
  vim.keymap.set('n', '<leader>tc', ':Trouble todo toggle filter.buf=0<CR>', { desc = '[T]odo [C]urrent' }),

  vim.keymap.set('n', '<leader>wsh', ':split<CR>', { desc = '[S]plit [H]orizontally' }),
  vim.keymap.set('n', '<leader>wsv', ':vsplit<CR>', { desc = '[S]plit [V]ertically' }),

  vim.keymap.set('n', '<leader>hB', ':G blame<CR>'),
}

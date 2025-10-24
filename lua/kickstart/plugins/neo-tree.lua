-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>ntt', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    { '<leader>nto', ':Neotree show<CR>', desc = 'NeoTree open', silent = true },
    { '<leader>ntc', ':Neotree close<CR>', desc = 'NeoTree close', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          -- Custom mappings can be added here
        },
      },
    },
  },
}

return {
  'olimorris/codecompanion.nvim',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'gemini_cli',
        model = 'gemini-pro',
      },
      inline = {
        adapter = 'gemini_cli',
      },
    },
  },
}

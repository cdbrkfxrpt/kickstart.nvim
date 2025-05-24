return {
  { -- List symbols in current buffer on the side
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = {
      { '<leader>to', '<cmd>Outline<CR>', desc = '[T]oggle [O]utline' },
    },
    opts = {
      outline_window = {
        position = 'left',
        width = 15,
      },
    },
  },
}

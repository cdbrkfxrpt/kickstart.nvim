return {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Other tpope magic
  'tpope/vim-unimpaired',
  'tpope/vim-surround',
  'tpope/vim-markdown',
  'tpope/vim-git',

  -- Keeps the stack of function signatures at the top as you scroll
  'wellle/context.vim',

  -- Whitespace is surprisingly still a problem in 2025
  {
    'ntpeters/vim-better-whitespace',
    config = function()
      vim.g.better_whitespace_enabled = true
      vim.g.strip_whitespace_on_save = true
      vim.g.strip_whitespace_confirm = false
    end,
  },

  -- Re-open at the place we last were
  'farmergreg/vim-lastplace',
}

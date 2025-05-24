return {
  -- {
  --   -- Zenburn theme
  --   "phha/zenburn.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     require("zenburn").setup()
  --     require("lualine").setup {
  --       options = {
  --         theme = "zenburn",
  --       }
  --     }
  --   end,
  -- },

  {
    'ramojus/mellifluous.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('mellifluous').setup {
        dim_inactive = true,
      }
      vim.cmd 'colorscheme mellifluous'
    end,
  },

  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('transparent').setup {
        exclude_groups = { 'CursorLine' },
      }
    end,
  },
}

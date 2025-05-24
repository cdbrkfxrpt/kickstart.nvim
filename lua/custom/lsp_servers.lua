return {
  rust_analyzer = {
    ['rust-analyzer'] = {
      checkOnSave = {
        command = 'clippy',
        allTargets = true,
      },
      -- rustfmt = {
      --   extraArgs = { "+nightly", },
      -- }
    },
    check = {
      enable = true,
    },
  },
  terraformls = {},
  ruff = {},
  pyright = {},
  bashls = {},
  gopls = {
    analyses = {
      unusedparams = true,
    },
    hints = {
      assignVariableTypes = true,
      compositeLiteralFields = true,
      constantValues = true,
      functionTypeParameters = true,
      parameterNames = true,
      rangeVariableTypes = true,
    },
    staticcheck = true,
    gofumpt = true,
  },
  markdown_oxide = {},
  -- hydra_lsp = {},
  jsonls = {},
  yamlls = {},
  taplo = {},
  -- dockerls = {},
  -- docker_compose_language_service = {},
  helm_ls = {},
  nil_ls = {},

  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        workspace = { checkThirdParty = false },
        telemetry = { enable = false },
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}

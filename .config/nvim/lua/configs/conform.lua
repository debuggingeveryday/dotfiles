local options = {
  formatters_by_ft = {
    lua = { "stylua" }, -- Lua formatting with Stylua
    css = { "prettier" }, -- CSS formatting with Prettier
    html = { "prettier" }, -- HTML formatting with Prettier
    javascript = { "prettierd", "prettier" }, -- JavaScript formatting with Prettier
    typescript = { "prettierd", "prettier" }, -- TypeScript formatting with Prettier
    -- python = { "black" }, -- Python formatting with Black
    json = { "prettier" }, -- JSON formatting with Prettier
    vue = { "prettier" },
    php = { "pint" },
    blade = { "blade-formatter" },
    scss = { "prettier" },
    react = { "prettier" },
    tsx = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
    yuck = { "fnlfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 10000,
    lsp_fallback = true,
  },
}

return options

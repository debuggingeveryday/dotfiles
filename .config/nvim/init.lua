vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- put this in your init.lua
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.yuck" },
  callback = function(event)
    -- print(string.format("starting yuck;s for %s", vim.inspect(event)))
    vim.lsp.start {
      name = "YuckLs",
      -- cmd = {"dotnet", "/home/gitrepos/yuckls/YuckLS/dist/YuckLS.dll"}, --this must be where you cloned this repo to.
      cmd = { "yuckls" }, -- if installed from aur
      root_dir = vim.fn.getcwd(),
    }
  end,
})

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

if vim.g.neovide then
  require "neovide"
end

require("origami").setup {
  useLspFoldsWithTreesitterFallback = {
    enabled = true,
    foldmethodIfNeitherIsAvailable = "indent", ---@type string|fun(bufnr: number): string
  },
  pauseFoldsOnSearch = true,
  foldtext = {
    enabled = true,
    padding = 3,
    lineCount = {
      template = "%d lines", -- `%d` is replaced with the number of folded lines
      hlgroup = "Comment",
    },
    diagnosticsCount = true, -- uses hlgroups and icons from `vim.diagnostic.config().signs`
    gitsignsCount = true, -- requires `gitsigns.nvim`
    disableOnFt = { "snacks_picker_input" }, ---@type string[]
  },
  autoFold = {
    enabled = true,
    kinds = { "comment", "imports" }, ---@type lsp.FoldingRangeKind[]
  },
  foldKeymaps = {
    setup = true, -- modifies `h`, `l`, `^`, and `$`
    closeOnlyOnFirstColumn = false, -- `h` and `^` only close in the 1st column
    scrollLeftOnCaret = false, -- `^` should scroll left (basically mapped to `0^`)
  },
}

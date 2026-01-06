-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "dark_horizon",
  transparency = true,
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
  theme = "vscode_dark",
  transparency = true,
  lazyload = true,
  hl_override = {
    Normal = { bg = "none" },
    NormalFloat = { bg = "none" },
  },
  statusline = {
    theme = "vscode_colored",
  },

  tabufline = {
    lazyload = false,
  },
}

return M

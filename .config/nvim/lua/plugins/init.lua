return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { "wakatime/vim-wakatime", lazy = false },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  --
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      require "configs.copilot"
    end,
  },

  { "bakpakin/fennel.vim" },

  { "elkowar/yuck.vim", ft = "yuck" },

  {
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    opts = {}, -- needed even when using default config

    -- recommended: disable vim's auto-folding
    init = function()
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "php",
        "blade",
        "tsx",
        "typescript",
      },
    },
  },

  {
    "epwalsh/pomo.nvim",
    version = "*", -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
    dependencies = {
      -- Optional, but highly recommended if you want to use the "Default" timer
      "rcarriga/nvim-notify",
    },
    opts = {
      -- See below for full list of options 👇
      sessions = {
        pomodoro = {
          { name = "Work", duration = "25m" },
          { name = "Short Break", duration = "5m" },
          { name = "Work", duration = "25m" },
          { name = "Short Break", duration = "5m" },
          { name = "Work", duration = "25m" },
          { name = "Long Break", duration = "15m" },
        },
      },
    },
  },

  { "nvzone/volt", lazy = true },
  { "nvzone/minty", cmd = { "Shades", "Huefy" } },

  {
    "nvim-telescope/telescope.nvim",
    defaults = {
      file_ignore_patterns = { "node_modules", ".git", ".env", ".local" }, -- optional: add specific ignores
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
    keys = {
      {
        "<leader>fF",
        "<cmd>Telescope find_files hidden=true no_ignore=true no_ignore_parent=true<cr>",
        desc = "Find Files (Hidden)",
      },
    },
    opts = function(_, opts)
      -- set default picker theme to ivy for all pickers
      opts.defaults = require("telescope.themes").get_ivy {
        layout_config = { height = 0.30 },
      }
    end,
  },
}

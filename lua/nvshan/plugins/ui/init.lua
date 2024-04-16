local settings = require("settings")

local plugins = {
  {
    "akinsho/bufferline.nvim",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvshan.plugins.ui.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    cmd = "LualineToggle",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvshan.plugins.ui.lualine")
    end,
  },
  {
    "utilyre/barbecue.nvim",
    version = "*",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      theme = "catppuccin",
    },
  },
  {
    "folke/noice.nvim",
    cond = false,
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("nvshan.plugins.ui.noice")
    end,
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function()
      require("nvshan.plugins.ui.notify")
    end,
  },
  {
    "edluffy/specs.nvim",
    event = "CursorMoved",
    config = function()
      require("nvshan.plugins.ui.specs")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = function()
      require("nvshan.plugins.ui.ibl")
    end,
  },
}

return plugins

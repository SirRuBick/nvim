return {
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    build = ":MasonUpdate",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    -- lazy=false,
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        config = function()
          require("nvshan.plugins.lsp.mason-lspconfig")
        end,
      },
      {
        "folke/neodev.nvim",
        config = true,
      },
      {
        "joechrisellis/lsp-format-modifications.nvim",
      },
      {
        "nvimdev/lspsaga.nvim",
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        },
        config = function()
          require("nvshan.plugins.lsp.lspsaga")
        end,
      },
    },
    config = require("nvshan.plugins.lsp.nvim-lsp"),
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufNewFile", "BufReadPost" },
    dependencies = {
      {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
      },
    },
    config = function()
      require("nvshan.plugins.lsp.nvim-lint")
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile", "BufWritePre" },
    cmd = { "ConformInfo" },
    config = function()
      require("nvshan.plugins.lsp.conform")
    end,
  },
  {
    "SmiteshP/nvim-navbuddy",
    cmd = { "Navbuddy" },
    dependencies = {
      "Smitesh/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("nvshan.plugins.lsp.nvim-navbuddy")
    end,
  },
}

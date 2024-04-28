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
    },
    config = function()
      require("nvshan.plugins.lsp.nvim-lsp")
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "LspAttach",
    opts = {},
  },
  {
    -- TODO: Need to think about the dependencies here
    -- NOTE: must load this before conform and nvim-lint
    -- BUG: it is not auto installed when lazy loaded
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    -- event = "LspAttach",
    config = function()
      require("nvshan.plugins.lsp.mason-tool")
    end,
  },
  {
    -- lazy loaded by lsp-config
    "mfussenegger/nvim-lint",
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    priority = 10,
    config = function()
      require("nvshan.plugins.lsp.nvim-lint")
    end,
  },
  {
    -- lazy loaded by lsp-config
    "stevearc/conform.nvim",
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("nvshan.plugins.lsp.conform")
    end,
  },
  {
    "SmiteshP/nvim-navbuddy",
    cmd = { "Navbuddy" },
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("nvshan.plugins.lsp.nvim-navbuddy")
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    cond = false,
    event = "LspAttach",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvshan.plugins.lsp.lspsaga")
    end,
  },
  {
    "hedyhli/outline.nvim",
    event = "LspAttach",
    opts = {},
  },
}

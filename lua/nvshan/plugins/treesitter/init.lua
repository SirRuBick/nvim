return {
  -- Tree sitter
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.2",
    build = ":TSUpdate",
    event = { "BufRead", "BufNewFile" },
    cmd = {
      "TSInstall",
      "TSInstallSync",
      "TSUpdate",
      "TSUpdateSync",
      "TSUninstall",
      "TSUninstallSync",
    },
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
        commit = "ec1c5bdb3d87ac971749fa6c7dbc2b14884f1f6a",
      },
      "nvim-treesitter/nvim-treesitter-context",
      "HiPhish/nvim-ts-rainbow2",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvshan.plugins.treesitter.config")
    end,
  },
}

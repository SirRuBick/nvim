return {
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("nvshan.plugins.git.gitsigns")
    end,
  },
  {
    "NeogitOrg/neogit",
    cmd = { "Neogit", "NeogitResetState" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("nvshan.plugins.git.neogit")
    end,
  },
}

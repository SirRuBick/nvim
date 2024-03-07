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
}

-- define custom formatter
local formatters = {}

formatters.black = {
  args = {
    "--stdin-filename",
    "$FILENAME",
    "--quiet",
    "--line-length=120",
    "-",
  },
}

-- set up conform
require("conform").setup({
  -- Map of filetype to formatters
  formatters_by_ft = {
    lua = { "stylua" },
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    c = { "clang-format" },
    cpp = { "clang-format" },
    -- Use the "*" filetype to run formatters on all filetypes.
    -- ["*"] = { "codespell" },
    -- Use the "_" filetype to run formatters on filetypes that don't
    -- have other formatters configured.
    -- ["_"] = { "trim_whitespace" },
  },
  -- custom formatters or overwrite default ones
  formatters = formatters,
})

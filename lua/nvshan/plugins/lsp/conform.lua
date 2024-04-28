-- define custom formatter
local formatters = {}

formatters.black = {
  prepand_args = {
    "--line-length=120",
  },
}

formatters.isort = {
  prepend_args = {
    "--line-length=119",
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
        return { "black", "isort" }
      end
    end,
    c = { "clang-format" },
    cpp = { "clang-format" },
    sh = { "shellcheck" },
    -- Use the "*" filetype to run formatters on all filetypes.
    -- ["*"] = { "codespell" },
    -- Use the "_" filetype to run formatters on filetypes that don't
    -- have other formatters configured.
    -- ["_"] = { "trim_whitespace" },
  },
  -- custom formatters or overwrite default ones
  formatters = formatters,
})

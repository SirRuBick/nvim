-- setup nvim-lint
local lint = require("lint")
lint.linters_by_ft = {
  python = { "flake8", "mypy" },
}

-- customize flake8
local flake8 = lint.linters.flake8
flake8.args = { "--format=default", "--quiet" }

-- customize mypy
local mypy = lint.linters.mypy
mypy.args = {
  "--follow_imports=normal",
  "--show-column-numbers",
  "--warn-unused-ignores",
  "--warn-return-any",
  "--warn-redundant-casts",
  "--warn-unused-configs",
}

-- setup linters
local status_ok, mason_tool = pcall(require, "mason-tool-installer")
if status_ok then
  mason_tool.setup({
    ensure_installed = {
      "flake8",
      "mypy",
      "shfmt",
      "stylua",
    },
  })
end

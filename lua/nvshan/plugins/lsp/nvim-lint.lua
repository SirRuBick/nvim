-- setup nvim-lint
local lint = require("lint")
lint.linters_by_ft = {
  python = { "flake8", "mypy" },
  sh = { "shellcheck" },
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

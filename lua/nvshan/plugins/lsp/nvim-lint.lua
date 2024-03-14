-- setup nvim-lint
local lint = require("lint")
lint.linters_by_ft = {
  python = { "flake8" },
}

-- customize flake8 linter
local flake8 = lint.linters.flake8
flake8.args = { "--format=default", "--quiet" }

-- setup linters
local status_ok, mason_tool = pcall(require, "mason-tool-installer")
if status_ok then
  mason_tool.setup {
    ensure_installed = {
      "flake8",
    },
  }
end


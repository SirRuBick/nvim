-- TODO: Can this be moved to ftplgin?
-- setup nvim-lint
local lint = require("lint")
lint.linters_by_ft = {
  python = { "flake8" },
}

-- setup linters
local status_ok, mason_tool = pcall(require, "mason-tool-installer")
if status_ok then
  mason_tool.setup {
    ensure_installed = {
      "flake8",
    },
  }
end


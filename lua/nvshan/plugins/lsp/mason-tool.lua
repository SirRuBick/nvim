local mason_tool = require("mason-tool-installer")

local to_install = {}

local conform_ok, conform = pcall(require, "conform")
if conform_ok then
  local formatters = conform.list_all_formatters()
  for i, v in pairs(formatters) do
    table.insert(to_install, v.name)
  end
else
  vim.notify("Conform not ready")
end

local lint_ok, lint = pcall(require, "lint")
if lint_ok then
  local linters_by_ft = lint.linters_by_ft
  for _, linters in pairs(linters_by_ft) do
    vim.list_extend(to_install, linters)
  end
end

for i, v in ipairs(to_install) do
  print(v)
end

mason_tool.setup({
  ensure_installed = to_install,
  run_on_start = true,
})

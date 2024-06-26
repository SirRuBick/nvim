local opts = {}

local input_file_path = require("nvshan.plugins.dap.utils").input_file_path

-- Config Python
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#python
-- https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
opts.python = {}
opts.python.adapters = function(cb, config)
  if config.request == "attach" then
    ---@diagnostic disable-next-line: undefined-field
    local port = (config.connect or config).port
    ---@diagnostic disable-next-line: undefined-field
    local host = (config.connect or config).host or "127.0.0.1"
    cb({
      type = "server",
      port = assert(port, "`connect.port` is required for a python `attach` configuration"),
      host = host,
      options = {
        source_filetype = "python",
      },
    })
  else
    cb({
      type = "executable",
      command = vim.fn.exepath("debugpy-adapter"),
      options = {
        source_filetype = "python",
      },
    })
  end
end
opts.python.configurations = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Debug",
    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
    console = "integratedTerminal",
    program = input_file_path(),
    pythonPath = function()
      local cwd, venv = vim.fn.getcwd(), os.getenv("VIRTUAL_ENV")
      if venv and vim.fn.executable(venv .. "/bin/python") == 1 then
        return venv .. "/bin/python"
      elseif vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
        return cwd .. "/.venv/bin/python"
      else
        return "/usr/bin/python"
      end
    end,
  },
}

return opts

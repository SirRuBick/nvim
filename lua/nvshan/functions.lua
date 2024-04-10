local M = {}
local is_available = require("utils").is_available

local function split()
  vim.cmd("set splitbelow")
  vim.cmd("sp")
  vim.cmd("res -5")
end

function M.compile_run()
  local ft = vim.bo.filetype
  if ft == "markdown" then
    vim.cmd("MarkdownPreview")
  elseif ft == "c" then
    split()
    vim.cmd("term gcc % -o %< && ./%< && rm %<")
  elseif ft == "lua" then
    split()
    vim.cmd("term luajit %")
    -- TODO: add more filetypes
  end
end

function M.go_to_stack_trace()
  local line = vim.api.nvim_get_current_line()
  local pattern = 'File "(.-)", line (%d+)'
  local file_path, line_number = line:match(pattern)
  if file_path and line_number then
    vim.cmd(":wincmd k")
    vim.cmd("e " .. file_path)
    vim.api.nvim_win_set_cursor(0, { tonumber(line_number), 0 })
  end
end

if is_available("toggleterm.nvim") then
  function M.toggle_glow()
    local buf_name = vim.api.nvim_buf_get_name(0)
    local Terminal = require("toggleterm.terminal").Terminal
    local glow = Terminal:new({
      cmd = "glow -p " .. buf_name,
      direction = "float",
      hidden = true,
      on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })
    glow:toggle()
  end

  function M.toggle_lazygit()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.9)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.9)
        end,
      },
      on_open = function(_)
        vim.cmd("startinsert!")
      end,
      on_close = function(_) end,
      count = 99,
    })
    lazygit:toggle()
  end

  function M.toggle_joshuto()
    local prev_win = vim.api.nvim_get_current_win()
    local output_path = "/tmp/joshuto_filechosen"
    os.remove(output_path)
    local path = vim.fn.expand("%:p:h")
    local cmd = string.format("joshuto --file-chooser --output-file %s %s", output_path, path)
    local Terminal = require("toggleterm.terminal").Terminal
    local joshuto = Terminal:new({
      cmd = cmd,
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.9)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.9)
        end,
      },
      on_exit = function(t, job, code, name)
        vim.cmd("silent! :checktime")
        if code == 102 then
          local open_path = vim.fn.readfile(output_path)[1]
          if open_path then
            vim.api.nvim_set_current_win(prev_win)
            vim.cmd(string.format("edit %s", open_path))
          end
        end
      end,
    })
    joshuto:toggle()
  end
end

return M

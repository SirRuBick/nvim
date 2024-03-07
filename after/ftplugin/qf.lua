-- Quick Fix 
vim.buffer.wrap true

local opts = { noremap = true, silent = true, buffer = 0 }
local wincmd = vim.b.pager and 'q' or 'c'
vim.keymap.set('n', 'q', '<cmd>lclose<CR><C-W>' .. wincmd, opts)

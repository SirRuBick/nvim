local is_available = require("utils").is_available
local keymap_utils = require("nvshan.keymap.utils")
local mappings = keymap_utils.init_mapping()
local map = keymap_utils.map

if is_available("copilot.vim") then
	mappings.i["<M-;>"] = map('copilot#Accept("<CR>")'):expr():desc("Copilot Accept")
	mappings.i["<M-bs>"] = map(("<Plug>(copilot-dismiss)")):desc("Copilot Dismiss")
	mappings.n["<leader>mv"] = map("<CMD>Copilot panel<CR>"):desc("Coplit Panel")
  mappings.i["<M-n>"] = map("<Plug>(copilot-next)"):desc("Copilot Next")
  mappings.i["<M-p>"] = map("<Plug>(copilot-previous)"):desc("Copilot Previous")
end

if is_available("codeium.vim") then
	mappings.i["<M-;>"] = map(function () return vim.fn['codeium#Accept']() end):expr():silent():desc("Accept")
	mappings.i["<M-bs>"] = map(function() return vim.fn['codeium#Clear']() end):expr():silent():desc("Clear")
	mappings.i["<M-m>"] = map(function() return vim.fn['codeium#Complete']() end):expr():silent():desc("Trigger Suggestion")
  mappings.i["<M-n>"] = map(function() return vim.fn['codeium#CycleCompletions'](1) end):expr():silent():desc("Next suggestion")
	mappings.i["<M-p>"] = map(function() return vim.fn['codeium#CycleCompletions'](-1) end):expr():silent():desc("Prev suggestion")
	mappings.n["<leader>cc"] = map(function() return vim.fn['codeium#Chat']() end):expr():silent():desc("Codeium Chat")
end

return mappings

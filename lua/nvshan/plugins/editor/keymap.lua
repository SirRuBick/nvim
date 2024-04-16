local is_available = require("utils").is_available
local keymap_utils = require("nvshan.keymap.utils")
local mappings = keymap_utils.init_mapping()
local map = keymap_utils.map
local wk_icons = require("icons").whichkey

if is_available("vim-tmux-navigator") then
	mappings.n["<C-h>"] = map(":TmuxNavigateLeft<CR>"):silent():noremap():desc("Tmux Navigate Left")
	mappings.n["<C-j>"] = map(":TmuxNavigateDown<CR>"):silent():noremap():desc("Tmux Navigate Down")
	mappings.n["<C-k>"] = map(":TmuxNavigateUp<CR>"):silent():noremap():desc("Tmux Navigate Up")
	mappings.n["<C-l>"] = map(":TmuxNavigateRight<CR>"):silent():noremap():desc("Tmux Navigate Right")
end

if is_available("toggleterm.nvim") then
	mappings.n["<leader>ta"] = map("<CMD>ToggleTermToggleAll<CR>"):silent():desc("Toggle term float")
	mappings.n["<leader>tf"] = map("<CMD>ToggleTerm direction=float<CR>"):silent():desc("Toggle term float")
	mappings.n["<leader>th"] = map("<CMD>ToggleTerm direction=horizontal<CR>"):silent():desc("Toggle term horizontal")
	mappings.n["<leader>tv"] = map("<CMD>ToggleTerm direction=vertical<CR>"):silent():desc("Toggle term vertical")
	mappings.n["<leader>tt"] = map("<CMD>ToggleTerm<CR>"):silent():desc("Toggle term")
	mappings.n["<leader>ts"] = map("<CMD>TermSelect<CR>"):silent():desc("Select term")
	mappings.n["<leader>t1"] = map("<CMD>1ToggleTerm<CR>"):silent():desc("Toggle term 1")
	mappings.n["<leader>t2"] = map("<CMD>2ToggleTerm<CR>"):silent():desc("Toggle term 2")
	mappings.n["<leader>t3"] = map("<CMD>3ToggleTerm<CR>"):silent():desc("Toggle term 3")
end

if is_available("harpoon") then
  local harpoon = require("harpoon")
  mappings.n["<leader>h"] = map():desc(wk_icons.h)
  mappings.n["<leader>ha"] = map(function() harpoon:list():add() end):desc("Add to harpoon")
  mappings.n["<leader>h["] = map(function() harpoon:list():prev() end):desc("Go to next")
  mappings.n["<leader>h]"] = map(function() harpoon:list():next() end):desc("Go to prev")
  mappings.n["<leader>hh"] = map(function() harpoon.ui:toggle_quick_menu(harpoon:list()) end):desc("Open UI")
  for idx = 1, 9 do
    mappings.n["<leader>h" .. idx] =
      map(function() harpoon:list():select(idx) end):desc("Pick harpoon " .. idx)
  end
end

return mappings

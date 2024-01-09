local is_available = require("utils").is_available
local keymap_utils = require("nvshan.keymap.utils")
local mappings = keymap_utils.init_mapping()
local map = keymap_utils.map

if is_available("copilot.vim") then
	mappings.i["<M-;>"] = map('copilot#Accept("<CR>")'):expr():desc("Copilot Accept")
	mappings.n["<leader>mv"] = map("<CMD>Copilot panel<CR>"):desc("Coplit Panel")
end

return mappings

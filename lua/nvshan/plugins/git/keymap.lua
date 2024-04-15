local is_available = require("utils").is_available
local keymap_utils = require("nvshan.keymap.utils")
local mappings = keymap_utils.init_mapping()
local map = keymap_utils.map


if is_available("telescope.nvim") then
  mappings.n["<leader>gb"] = map(function() require("telescope.builtin").git_branches() end):desc("Search git branches")
  mappings.n["<leader>gc"] = map(function() require("telescope.builtin").git_commits() end):desc("Search Git commits")
  mappings.n["<leader>gs"] = map(function() require("telescope.builtin").git_status() end):desc("Search Git status")
  mappings.n["<leader>gf"] = map(function() require("telescope.builtin").git_files() end):desc("Search Git files")
end

if is_available("gitsigns.nvim") then
  mappings.n["[h"] = map(function() require("gitsigns").prev_hunk() end):desc("Prev git hunk")
  mappings.n["]h"] = map(function() require("gitsigns").next_hunk() end):desc("Next git hunk")
  mappings.n["<leader>ga"] = map(function() require("gitsigns").stage_hunk() end):desc("Git stage hunk")
  mappings.n["<leader>gA"] = map(function() require("gitsigns").stage_buffer() end):desc("Git stage buffer")
  mappings.n["<leader>gu"] = map(function() require("gitsigns").undo_stage_hunk() end):desc("Git unstage hunk")
  mappings.n["<leader>gd"] = map(function() require("gitsigns").diffthis() end):desc("Git difference")
  mappings.n["<leader>gD"] = map(function() require("gitsigns").diffthis('~') end):desc("Git difference all")
  mappings.n["<leader>gr"] = map(function() require("gitsigns").reset_hunk() end):desc("Git reset hunk")
  mappings.n["<leader>gR"] = map(function() require("gitsigns").reset_buffer() end):desc("Git unstage buffer")
  mappings.n["<leader>gt"] = map(function() require("gitsigns").toggle_current_line_blame() end):desc("Toggle line blame")
  mappings.n["<leader>gT"] = map(function() require("gitsigns").blame_line({full=true}) end):desc("Toggle full blame")
  mappings.n["<leader>gx"] = map(function() require("gitsigns").toggle_deleted() end):desc("Toggle deleted")
  -- Text object
  mappings.o["ih"] = map(":<C-U>Gitsigns select_hunk<CR>"):desc("Select in hunk")
  mappings.x["ih"] = map(":<C-U>Gitsigns select_hunk<CR>"):desc("Select in hunk")
end

if is_available("neogit") then
  mappings.n["<leader>g<CR>"] = map(function() require("neogit").open() end):desc("Neogit")
  mappings.n["<leader>g-"] = map(function() require("neogit").open({ kind = "split" }) end):desc("Neogit in split")
  mappings.n["<leader>g|"] = map(function() require("neogit").open({ kind = "vsplit" }) end):desc("Neogit in vsplit")
end

return mappings

local global = require("global")
local custom_functions = require("nvshan.functions")
local keymap_utils = require("nvshan.keymap.utils")
local mappings = keymap_utils.init_mapping()
local map = keymap_utils.map

local is_available = require("utils").is_available

-- which key descriptions
local wk_icons = require("icons").whichkey
mappings.n["<leader>b"] = map():desc(wk_icons.b)
mappings.n["<leader>c"] = map():desc(wk_icons.c)
mappings.n["<leader>f"] = map():desc(wk_icons.f)
mappings.n["<leader>g"] = map():desc(wk_icons.g)
mappings.n["<leader>p"] = map():desc(wk_icons.p)
mappings.n["<leader>q"] = map():desc(wk_icons.q)
mappings.n["<leader>t"] = map():desc(wk_icons.t)
mappings.n["<leader>u"] = map():desc(wk_icons.u)
mappings.n["<leader>x"] = map():desc(wk_icons.x)

-- Operations
mappings.t["<C-x>"] = map("<C-\\><C-n>"):silent():desc("Exit terminal mode")
mappings.i["jk"] = map("<C-\\><C-n>"):desc("Exit insert mode")
mappings.i["<C-s>"] = map("<cmd>w<CR>"):desc("Save file")
mappings.v["<C-s>"] = map("cmd>w<CR>"):desc("Save file")
mappings.i["<C-v>"] = map("<C-R>+"):desc("Paste from system clipboard")

-- navigate in insert mode
mappings.i["<C-h>"] = map("<Left>"):desc("Move left")
mappings.i["<C-l>"] = map("<Right>"):desc("Move right")
mappings.i["<C-j>"] = map("<Down>"):desc("Move down")
mappings.i["<C-k>"] = map("<Up>"):desc("Move up")
mappings.i["<C-b>"] = map("<Home>"):desc("Move to line begin")
mappings.i["<C-e>"] = map("<End>"):desc("Move to line end")

-- Operations
mappings.n["<ESC>"] = map("<Esc><CMD>noh<CR>"):desc("Clear Highlights")

-- Coding enhancement
mappings.n["<A-o>"] = map("o<Esc>k"):desc("New Line below")
mappings.n["<A-O>"] = map("O<Esc>j"):desc("New Line above")
mappings.n["<A-j>"] = map(":m .+1<CR>=="):desc("move text up")
mappings.n["<A-k>"] = map(":m .-2<CR>=="):desc("move text down")

-- Moves
mappings.n["<A-h>"] = map("0"):silent():desc("Go to line begin")
mappings.n["<A-l>"] = map("$"):silent():desc("Go to line end")
mappings.v["<A-h>"] = map("0"):silent():desc("Go to line begin")
mappings.v["<A-l>"] = map("$"):silent():desc("Go to line end")
mappings.i["<A-h>"] = map("<HOME>"):desc("Move to line begin")
mappings.i["<A-l>"] = map("<END>"):desc("Move to line end")
mappings.c["<A-h>"] = map("<HOME>"):desc("Move to command begin")
mappings.c["<A-l>"] = map("<END>"):desc("Move to command end")
mappings.o["<A-l>"] = map("$"):silent():desc("Line end")
mappings.o["<A-h>"] = map("^"):silent():desc("Line begin")
mappings.n["[q"] = map("<cmd>cprevious<CR>"):silent():desc("Prev quickfix")
mappings.n["]q"] = map("<cmd>cnext<CR>"):silent():desc("Next quickfix")
mappings.n["[Q"] = map("<cmd>cfirst<CR>"):silent():desc("First quickfix")
mappings.n["]Q"] = map("<cmd>clast<CR>"):silent():desc("Last quickfix")
mappings.n["[a"] = map("<cmd>lprevious<CR>"):silent():desc("Prev location")
mappings.n["]a"] = map("<cmd>lnext<CR>"):silent():desc("Next location")
mappings.n["[A"] = map("<cmd>lfirst<CR>"):silent():desc("First location")
mappings.n["]A"] = map("<cmd>llast<CR>"):silent():desc("Last location")
-- close qf or ll if they are present, see https://superuser.com/questions/355325/close-all-locations-list-or-quick-fix-windows-in-vim
mappings.n["QC"] = map(":ccl <bar> lcl<CR>"):desc("Quick close quickfix or locationlist")

-- Folding
mappings.n["zc"] = map("zc"):desc("zMzv"):desc("Focus on Fold")

-- Macro
mappings.n["<C-q>"] = map("q"):desc("Macro Prefix")

-- Split Navigation
mappings.n["<leader>k"] = map("<cmd>only<CR>"):silent():noremap():desc(wk_icons.k)
mappings.n["<C-h>"] = map("<C-w>h"):silent():noremap():desc("Move to left split")
mappings.n["<C-j>"] = map("<C-w>j"):silent():noremap():desc("Move to below split")
mappings.n["<C-k>"] = map("<C-w>k"):silent():noremap():desc("Move to above split")
mappings.n["<C-l>"] = map("<C-w>l"):silent():noremap():desc("Move to right split")
mappings.t["<C-h>"] = map("<C-\\><C-n>:wincmd h<CR>"):silent():noremap():desc("Move to left split")
mappings.t["<C-j>"] = map("<C-\\><C-n>:wincmd j<CR>"):silent():noremap():desc("Move to below split")
mappings.t["<C-k>"] = map("<C-\\><C-n>:wincmd k<CR>"):silent():noremap():desc("Move to above split")
mappings.t["<C-l>"] = map("<C-\\><C-n>:wincmd l<CR>"):silent():noremap():desc("Move to right split")

mappings.n["<C-Up>"] = map("<cmd>resize -2<CR>"):desc("Resize split up")
mappings.n["<C-Down>"] = map("<cmd>resize +2<CR>"):desc("Resize split down")
mappings.n["<C-Left>"] = map("<cmd>vertical resize -2<CR>"):desc("Resize split left")
mappings.n["<C-Right>"] = map("<cmd>vertical resize +2<CR>"):desc("Resize split right")

mappings.n["<C-s>j"] = map("<cmd>set nosplitbelow<CR><CMD>split<CR><CMD>set splitbelow<CR>"):desc("Split above")
mappings.n["<C-s>k"] = map("<cmd>set splitbelow<CR><CMD>split<CR>"):desc("Split below")
mappings.n["<C-s>h"] = map("<cmd>set nosplitright<CR><CMD>vsplit<CR><CMD>set splitright<CR>"):desc("Split left")
mappings.n["<C-s>l"] = map("<cmd>set splitright<CR><CMD>vsplit<CR>"):desc("Split right")
mappings.n["<C-s>t"] = map("<cmd>tabe<CR>"):desc("New Tab")
mappings.n["<C-s>T"] = map("<cmd>tab split<CR>"):desc("Split tab")
mappings.n["[t"] = map("<cmd>tabprevious<CR>"):desc("Prev tab")
mappings.n["]t"] = map("<cmd>tabnext<CR>"):desc("Next tab")

-- Improved Terminal Navigation
mappings.n["<C-h>"] = map(":wincmd h<CR>"):desc("Move to left split")
mappings.n["<C-j>"] = map(":wincmd j<CR>"):desc("Move to below split")
mappings.n["<C-k>"] = map(":wincmd k<CR>"):desc("Move to above split")
mappings.n["<C-l>"] = map(":wincmd l<CR>"):desc("Move to right split")

-- Buffer
mappings.n["[b"] = map("<cmd>bprevious<CR>"):desc("Prev buffer")
mappings.n["]b"] = map("<cmd>bnext<CR>"):desc("Next buffer")
mappings.n["[B"] = map("<cmd>bfirst<CR>"):desc("First buffer")
mappings.n["]B"] = map("<cmd>blast<CR>"):desc("Last buffer")
mappings.n["<leader>bb"] = map(":buffers<CR>:buffer<Space>"):desc("Switch to buffer by name")
mappings.n["<leader>bd"] = map(":bd<CR>"):desc("Delete buffer")
mappings.n["<leader>bn"] = map(":new<CR>"):desc("New buffer")
mappings.n["<leader>bs"] = map("<cmd>w<CR>"):desc("Save buffer")
mappings.n["<leader>bS"] = map("<cmd>wa<CR>"):desc("Save all buffer")
mappings.n["<leader>bq"] = map("<cmd>q<CR>"):desc("Quit buffer")
mappings.n["<leader>bQ"] = map("<cmd>qa<CR>"):desc("Quit all buffer")

-- Move text up and down
mappings.v["<A-j>"] = map(":m .+1<CR>=="):desc("move text up")
mappings.v["<A-k>"] = map(":m .-2<CR>=="):desc("move text down")
mappings.x["J"] = map(":move '>+1<CR>gv-gv"):desc("move text up")
mappings.x["K"] = map(":move '<-2<CR>gv-gv"):desc("move text down")
mappings.x["<A-j>"] = map(":move '>+1<CR>gv-gv"):desc("move text up")
mappings.x["<A-k>"] = map(":move '<-2<CR>gv-gv"):desc("move text down")
-- Stay in indent mode
mappings.v["<A-[>"] = map("<gv"):silent():desc("unindent line")
mappings.v["<A-]>"] = map(">gv"):silent():desc("indent line")
mappings.n["<A-[>"] = map("<<"):silent():desc("unindent line")
mappings.n["<A-]>"] = map(">>"):silent():desc("indent line")
mappings.i["<A-[>"] = map("<C-d>"):silent():noremap():desc("unindent line")
mappings.i["<A-]>"] = map("<C-t>"):silent():noremap():desc("indent line")

-- Lazy
mappings.n["<leader>z"] = map("<CMD>Lazy<CR>"):desc(wk_icons.z)

-- File Explorer
-- mappings.n["<leader>e"] = map("<CMD>NvimTreeToggle<CR>"):desc(wk_icons.e)

-- UI assistance
local ui = require("nvshan.keymap.helpers")
mappings.n["<leader>u"] = map():desc(wk_icons.u)
mappings.n["<leader>ua"] = map(ui.toggle_autopairs):desc("Toggle autopairs")
mappings.n["<leader>ub"] = map(ui.toggle_background):desc("Toggle background")
mappings.n["<leader>uc"] = map(ui.toggle_cmp):desc("Toggle auto completion")
mappings.n["<leader>uC"] = map(ui.toggle_conceal):desc("Toggle conceal")
mappings.n["<leader>ud"] = map(ui.toggle_diagnostics):desc("Toggle diagnostics virtual text")
if is_available("gitsigns.nvim") then
  mappings.n["<leader>ug"] = map(ui.toggle_git_blame):desc("Toggle git signs")
end
mappings.n["<leader>uL"] = map(ui.toggle_codelens):desc("Toggle code lens")
mappings.n["<leader>uw"] = map(ui.toggle_wrap):desc("toggle wrap")
mappings.n["<leader>us"] = map(ui.toggle_spell):desc("Toggle spellcheck")
mappings.n["<leader>uS"] = map(ui.toggle_statusline):desc("Toggle status line")
mappings.n["<leader>uT"] = map(ui.toggle_treesitter_context):desc("Toggle treesitter context")

-- Preview
mappings.n["<leader>h"] = map():desc(wk_icons.h)
mappings.n["<leader>hm"] = map("<CMD>MarkdownPreview<CR>"):desc("Preview Markdown with browser")

-- nvim-ufo
if is_available("nvim-ufo") then
  mappings.n["zp"] = map(require("ufo").peekFoldedLinesUnderCursor):desc("Peek folded lines under cursor")
end

-- Others
if global.is_mac then
  mappings.n["<leader>?"] = map("<CMD>silent !open dict://<cword><CR>"):desc("Open current word in dictionary")
end
mappings.n["<A-g>"] = map(custom_functions.go_to_stack_trace):desc("Go to stack trace")
mappings.n["<F4>"] = map(custom_functions.compile_run):desc("Compile and run")
mappings.n["<leader>hg"] = map(custom_functions.toggle_glow):desc("Glow")
-- mappings.n["<C-g>"] = map(custom_functions.toggle_lazygit):desc("Lazygit")
mappings.n["<leader>gg"] = map(custom_functions.toggle_lazygit):desc("Lazygit")

return mappings

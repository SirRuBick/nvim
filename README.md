# Neovim config
This is my personal neovim config.<br>
I am still adding things in as I lean more about nvim.<br>

## Plugins
+ [Lazy.nvim](https://github.com/folke/lazy.nvim): Plugin Manager

## Requirements
+ neovim 0.9.4
+ [nerdfont](https://www.nerdfonts.com/cheat-sheet)
+ [git](https://git-scm.com/)
+ [ripgrep](https://github.com/BurntSushi/ripgrep)
+ [glow](https://github.com/charmbracelet/glow): required by Glow
+ [nodejs](https://github.com/nodejs): required by github Copliot
- [codespell](https://github.com/codespell-project/codespell): required by conform.nvim
- [wget](https://www.gnu.org/software/wget/): required by mason.nvim

## Keymaps
Some of the shortcuts I use frequently are listed here. <br>
In the following shortcuts, `<leader>` represents `space`.<br>

<details>
    <h3><summary>
            Core
    </summary></h3>

| Shortcut          | Mode     | Description                                                              | plugin                      |
|-------------------|----------|--------------------------------------------------------------------------|-----------------------------|
| `CTRL`+`o`        | N        | Cursor moves back to previous position                                   | Vim                         |
| `CTRL`+`i`        | N        | Cursor moves back to next position                                       | Vim                         |
| `CTRL`+`6`        | N        | Toggle between previous file with                                        | Vim                         |
| `ALT`+`l`        | N        | Go to beginning of the line                                              | Custom                      |
| `ALT`+`h`        | N        | Go to end of the line                                                    | Custom                      |
| `CTRL`+`q`        | N        | Exit terminal mode                                                       | Custom                      |
| `CTRL`+`m`        | N        | Move argument/function                                                   | Treesitter                  |
| `leader`+`e` | N    | Toggle file explorer | nvim-tree |
| `leader`+`k` | N    | Keep only current split | Vim |
| `leader`+`z` | N    | Open plugin manager | lazy.nvim |
</details>

<details open><summary>LSP</summary>

| Shortcut | Mode | Description | Plugin |
|----------|------|-------------|--------|
| `gd`     | N    | Go to symbol definition | LSP |
| `gD`     | N    | Go to symbol declaration | LSP |
| `gI`     | N    | Go to symbol implementation | LSP |
| `gT`     | N    | Go to type definition | LSP |
| `leader`+`d` | N    | Hover diagnostics | LSP |
| `leader`+`D` | N    | Search diagnostics | Telescope |
| `leader`+`s` | N    | Document symbols | LSP |
| `leader`+`r` | N    | Rename current symbol | LSP |
| `leader`+`p` | N    | Peek symbol definition | LSP |
| `leader`+`a` | N    | Code action | LSP |
| `leader`+`h` | N    | Signature help | LSP |
| `leader`+`f` | N    | Format buffer | conform.nvim |
| `leader`+`m` | N    | Format modifications | conform.nvim |
| `leader`+`o` | N    | Symbol outlines | lspsaga |
| `leader`+`c` | N    | Incoming calls | lspsaga/telescope |
| `leader`+`C` | N    | Outgoing calls | lspsaga/telescope |
</details>
<details open><summary>Jumping</summary>

| Shortcut | Mode | Description | Plugin |
|----------|------|-------------|--------|
| `[b`     | N    | Jump to previous buffer | Vim |
| `]b`     | N    | Jump to next buffer | Vim |
| `[t`     | N    | Jump to previous tab | Vim |
| `]t`     | N    | Jump to next tab | Vim |
| `[c`     | N    | Jump to previous class start | Treesitter |
| `]c`     | N    | Jump to next class start | Treesitter |
| `[C`     | N    | Jump to previous class end | Treesitter |
| `]C`     | N    | Jump to next class end | Treesitter |
| `[f`     | N    | Jump to previous function call start | Treesitter |
| `]f`     | N    | Jump to next function call start | Treesitter |
| `[F`     | N    | Jump to previous function call end | Treesitter |
| `]F`     | N    | Jump to next function call end | Treesitter |
| `[i`     | N    | Jump to previous condition start | Treesitter |
| `]i`     | N    | Jump to next condition start | Treesitter |
| `[I`     | N    | Jump to previous condition end | Treesitter |
| `]I`     | N    | Jump to next condition end | Treesitter |
| `[l`     | N    | Jump to previous loop start | Treesitter |
| `]l`     | N    | Jump to next loop start | Treesitter |
| `[L`     | N    | Jump to previous loop end | Treesitter |
| `]L`     | N    | Jump to next loop end | Treesitter |
| `[m`     | N    | Jump to previous method start | Treesitter |
| `]m`     | N    | Jump to next method start | Treesitter |
| `[M`     | N    | Jump to previous method end | Treesitter |
| `]M`     | N    | Jump to next method end | Treesitter |
| `[d`     | N    | Jump to previous diagnostic  | LSP |
| `]d`     | N    | Jump to next diagnostic | LSP |
| `[h`     | N    | Jump to previous git hunk | Gitsigns |
| `]h`     | N    | Jump to next git hunk | Gitsigns |
| `[a`     | N    | Jump to previous location | Vim |
| `]a`     | N    | Jump to next location | Vim |
| `[A`     | N    | Jump to first location | Vim |
| `]A`     | N    | Jump to last location | Vim |
| `[q`     | N    | Jump to previous quickfix | Vim |
| `]q`     | N    | Jump to next quickfix | Vim |
| `[Q`     | N    | Jump to first quickfix | Vim |
| `]Q`     | N    | Jump to last quickfix | Vim |
| `[s`     | N    | Jump to previous misspelled word | Vim |
| `]s`     | N    | Jump to next missspelled word | Vim |
| `[r`     | N    | Jump to previous reference| vim-illuminate |
| `]r`     | N    | Jump to next reference| vim-illuminate |
</details>
<details open><summary>Unused</summary>

| Key | Mode |
| ---- | ---- |
| `CTRL` + `s` | Normal |
| `CTRL` + `@` | Normal |
| `CTRL` + `n` | Normal |
| `CTRL` + `[` | Normal |
| `CTRL` + `_` | Normal |
| `Y` | Normal |
| `_` | Normal |
</details>

## TODO
- doc keymaps
- mac setup
- change or delete do not replace register
- new terminal should activate vitual environment if source is
- write some snippets
- set up markdown note taking system

### Learn Neovim
- vim fuigitive
- quickfix
- daddboard

### BUGS
- project is jumping dir for nonsense
- dadboard ui close should also close dbout and sql query
- lsp format modifications is not configured or not key mapped

### Plugins to explore
| Section | Plugins |
|---------|---------|
| coding | "ThePrimeagen/harpoon" |
| coding | "chentoast/marks.nvim" |
| coding | "SmiteshP/nvim-navbuddy" |
| coding | "kevinhwang91/nvim-bqf" |
| test | "nvim-neotest/neotest" |
| git | "ThePrimeagen/git-worktree.nvim"|
| bookmark | "MattesGroeger/vim-bookmarks" |
| bookmark | "tom-anders/telescope-vim-bookmarks.nvim" |
| file explorer | "stevearc/oil.nvim" |
| note taking | "epwalsh/obsidian.nvim" |
| note taking | "mickael-menu/zk-nvim" |
| note taking | "renerocksai/telekasten.nvim" |
| note taking | "vimwiki" |
| markdown | "ekickx/clipboard-image.nvim" |
| AI | "David-Kunz/gen.nvim"|
| AI | "Exafunction/codeium.nvim"|
| Others | "vim-calendar" |
| Others | "epwalsh/pomo.nvim" |

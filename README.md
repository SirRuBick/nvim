# Neovim config
This is my personal neovim config.<br>
I am still adding things in as I lean more about nvim.<br>

## Plugins
+ [Lazy.nvim](https://github.com/folke/lazy.nvim): Plugin Manager

## Requirements
+ neovim 0.9.4
+ nerdfont
+ git
+ [ripgrep](https://github.com/BurntSushi/ripgrep)
+ [glow](https://github.com/charmbracelet/glow): required by Glow
+ [nodejs](https://github.com/nodejs): required by github Copliot
+ icu4c: required by lspsaga since it uses markdown

## Keymaps
Some of the shortcuts I use frequently are listed here. <br>
In the following shortcuts, `<leader>` represents `space`.<br>

| Shortcut          | Mode     | Description                                                              | plugin                      |
|-------------------|----------|--------------------------------------------------------------------------|-----------------------------|
| `CTRL`+`o`        | N        | Cursor moves back to previous position                                   | Vim                         |
| `CTRL`+`i`        | N        | Cursor moves back to next position                                       | Vim                         |
| `CTRL`+`6`        | N        | Toggle between previous file with                                        | Vim                         |
| `ALT` +`l`        | N        | Go to beginning of the line                                              | Vim                         |
| `ALT` +`h`        | N        | Go to end of the line                                                    | Vim                         |
| `CTRL`+`q`        | N        | Exit terminal mode                                                       | Vim                         |
### Unused keybindings
| Key | Mode |
| ---- | ---- |
| `CTRL` + `s` | Normal |
| `CTRL` + `@` | Normal |
| `CTRL` + `n` | Normal |
| `CTRL` + `[` | Normal |
| `CTRL` + `_` | Normal |
| `S` | Normal |
| `Y` | Normal |
| `_` | Normal |
| `s` | Normal |


## TODO
- mac setup
- nvim-bqf with telescope
- get rid of lspsaga and use symbols-outline
- "nvim-navbuddy and from https://github.com/Elteoremadebeethoven/nvim-config/blob/master/lua/plugins-config.lua
- check keymaps and document down
- vim-unimpaired has some nice key bindings to reference
- change or delete do not replace register
- learn to use vim fuigitive
- new terminal should activate vitual environment if source is
- there are quite some duplicate features over trouble, telescope and lspsaga
- keymaps for splits more: c-w _ and c-w | to maximaz split, and shorcuts to move splits around
- can have a keybindings to switch toggle scheme style, like one dark
- autocmd for automatically comment file with header?

### BUGS
- project is jumping dir for nonsense
- dadboard ui close should also close dbout and sql query
- lsp format modifications is not configured or not key mapped
- markdown still get client exit with code 0 sometimes

### Plugins to explore
| Section | Plugins |
|---------|---------|
| coding | "ThePrimeagen/harpoon" |
| coding | "chentoast/marks.nvim" |
| coding | "rmagatti/alternate-toggler" |
| coding | "skywind3000/asyncrun.vim" |
| coding | "AckslD/swenv.nvim" |
| test | "nvim-neotest/neotest" |
| git | "ThePrimeagen/git-worktree.nvim"|
| bookmark | "MattesGroeger/vim-bookmarks" |
| bookmark | "tom-anders/telescope-vim-bookmarks.nvim" |
| file explorer | "stevearc/oil.nvim" |
| note taking | "epwalsh/obsidian.nvim" |
| note taking | "mickael-menu/zk-nvim" |
| note taking | "renerocksai/telekasten.nvim" |
| AI | "David-Kunz/gen.nvim"|
| AI | "Exafunction/codeium.nvim"|

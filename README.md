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
- codespell: required by conform.nvim
- wget: required by mason.nvim

## Keymaps
Some of the shortcuts I use frequently are listed here. <br>
In the following shortcuts, `<leader>` represents `space`.<br>

| Shortcut          | Mode     | Description                                                              | plugin                      |
|-------------------|----------|--------------------------------------------------------------------------|-----------------------------|
| `CTRL`+`o`        | N        | Cursor moves back to previous position                                   | Vim                         |
| `CTRL`+`i`        | N        | Cursor moves back to next position                                       | Vim                         |
| `CTRL`+`6`        | N        | Toggle between previous file with                                        | Vim                         |
| `ALT` +`l`        | N        | Go to beginning of the line                                              | Custom                      |
| `ALT` +`h`        | N        | Go to end of the line                                                    | Custom                      |
| `CTRL`+`q`        | N        | Exit terminal mode                                                       | Custom                      |
### Unused keybindings
| Key | Mode |
| ---- | ---- |
| `CTRL` + `s` | Normal |
| `CTRL` + `@` | Normal |
| `CTRL` + `n` | Normal |
| `CTRL` + `[` | Normal |
| `CTRL` + `_` | Normal |
| `Y` | Normal |
| `_` | Normal |


## TODO
- check keymaps and document down
- mac setup
- vim-unimpaired has some nice key bindings to reference
- change or delete do not replace register
- new terminal should activate vitual environment if source is

## Learn Neovim
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

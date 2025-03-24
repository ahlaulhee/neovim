## Personal Neovim Config

I based my configuration on the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) project and modularized it bit by bit. I also added some plugins that I found neccesary for my daily use.

![Showcase](https://github.com/user-attachments/assets/00d5e2ac-78fd-4651-8ced-ba0cdaf8f637)

### Structure

- lua
  - core
  - plugins
- init.lua

### Keybinds

| Mode     | Keymap     | Description                                    |
| -------- | ---------- | ---------------------------------------------- |
| Visual   | <          | Stay indent mode after indent                  |
| Visual   | >          | Stay indent mode after indent                  |
| Visual   | p          | Preserve last yanked text when pasting         |
| Insert   | jj         | Back to visual mode                            |
| Normal   | <Esc>      | Remove search highlight                        |
| Normal   | <leader>q  | Open diagnostic list                           |
| Normal   | <C-h>      | Move focus to left window                      |
| Normal   | <C-l>      | Move focus to right window                     |
| Normal   | <C-j>      | Move focus to lower window                     |
| Normal   | <C-k>      | Move focus to upper window                     |
| Normal   | <C-s>      | Save file                                      |
| Normal   | x          | Delete character without copying into register |
| Normal   | <C-d>      | Scroll down and center                         |
| Normal   | <C-u>      | Scroll up and center                           |
| Normal   | n          | Find next and center                           |
| Normal   | N          | Find previous and center                       |
| Normal   | <Up>       | Shrink window horizontally                     |
| Normal   | <Down>     | Expand window horizontally                     |
| Normal   | <Left>     | Shrink window vertically                       |
| Normal   | <Right>    | Expand window vertically                       |
| Normal   | <Tab>      | Focus next buffer                              |
| Normal   | <S-Tab>    | Focus previous buffer                          |
| Normal   | <leader>x  | Close buffer                                   |
| Normal   | <leader>b  | New buffer                                     |
| Normal   | <leader>v  | Split vertically                               |
| Normal   | <leader>h  | Split horizontally                             |
| Normal   | <leader>se | Equal size of windows                          |
| Normal   | <leader>xs | Close window                                   |
| Normal   | <leader>to | New tab                                        |
| Normal   | <leader>tx | Close tab                                      |
| Normal   | <leader>tn | Next tab                                       |
| Normal   | <leader>tp | Previous tab                                   |
| Normal   | <leader>lw | Toggle line wrap                               |
| Normal   | [d         | Next diagnostic                                |
| Normal   | ]d         | Previous diagnostic                            |
| Normal   | <leader>st | Open terminal                                  |
| Terminal | <C-q>      | Close terminal                                 |
| Terminal | <Esc><Esc> | Exit terminal mode                             |

### Plugins

- [Aerial](https://github.com/stevearc/aerial.nvim): navigate through methods.
- [Alpha](https://github.com/goolord/alpha-nvim): customizable dashboard
- [Autopairs](https://github.com/windwp/nvim-autopairs): automatically ()[]{} pairs
- [Bufferline](https://github.com/akinsho/bufferline.nvim): display open buffers as tabs
- [Cmp](https://github.com/hrsh7th/nvim-cmp): autocompletion
- [Colorizer](https://github.com/norcalli/nvim-colorizer.lua): highlight color codes
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim): colorscheme
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim): git integration
- [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim): show indentation guides even on empty lines
- [Lint](https://github.com/mfussenegger/nvim-lint): linting
- LSP: integrated language server support
  - [Lspconfig](https://github.com/neovim/nvim-lspconfig)
  - [Mason](https://github.com/williamboman/mason.nvim)
  - [Conform](https://github.com/stevearc/conform.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim): statusline
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim): file explorer
- [Telescope](https://github.com/nvim-telescope/telescope.nvim): fzf for files, buffers, etc
- [Todo-comments](https://github.com/folke/todo-comments.nvim): highlight and manage todo comments
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter): improved syntax highlighting and code parsing
- [Which-key](https://github.com/folke/which-key.nvim): display available keybindings

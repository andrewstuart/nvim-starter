# Neovim Starter

Base configuration for Neovim. Meant to be somewhat unopinionated but small. The plugin manager ([packer.nvim](https://github.com/wbthomason/packer.nvim)) will be downloaded along side all plugins the first time you open Neovim.

Autocompletion and "code intellisense" is omitted on this configuration, so you can do your research and add the one you think is best for your workflow.

All the code in this configuration is explained here:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Startup Plugins](https://vonheikemen.github.io/devlog/es/tools/neovim-startup-plugins/)

## Requirements

* Neovim v0.7 or greater.
* git.
* A `C` compiler. Can be `gcc`, `tcc` or `zig`.
* [make](https://www.gnu.org/software/make/).
* (optional) [ripgrep](https://github.com/BurntSushi/ripgrep). Improves project wide search speed.
* (optional) [fd](https://github.com/sharkdp/fd). Improves file search speed.
* (optional) A patched font to display icons. I hear [nerdfonts](https://www.nerdfonts.com/) has a good collection.

## Installation

* Backup your existing configuration if you have one.

* Create an `init.lua` file in your system. Use this command if you don't know the specific location of Neovim's configuration folder.

```sh
nvim --headless -c 'call mkdir(stdpath("config"), "p") | exe "edit" stdpath("config") . "/init.lua" | write | quit'
```

* Open your configuration file with Neovim.

```sh
nvim -c 'edit $MYVIMRC'
```

* Copy the content of `init.lua` in this repository into your own `init.lua`.

* Restart Neovim. Wait until plugins are installed then restart Neovim again.

## Keybindings

Leader key: `Space`.

| Mode | Key | Action |
| --- | --- | --- |
| Normal  | `<leader>h` | Go to first non empty character in line. |
| Normal  | `<leader>l` | Go to last non empty character in line. |
| Normal  | `<leader>a` | Select all text. |
| Normal  | `cp` | Copy selected text to clipboard. |
| Normal  | `cv` | Paste clipboard content. |
| Normal  | `<leader>w` | Save file. |
| Normal  | `<leader>bq` | Close current buffer. |
| Normal  | `<leader>bl` | Go to last active buffer. |
| Normal  | `<leader>?` | Search oldfiles history. |
| Normal  | `<leader><space>` | Search open buffers. |
| Normal  | `<leader>ff` | Find file in current working directory. |
| Normal  | `<leader>fg` | Search pattern in current working directory. Interactive "grep search". |
| Normal  | `<leader>fd` | Search diagnostics in current file. |
| Normal  | `<leader>fs` | Search pattern in current file. |
| Normal  | `<leader>e` | Open file explorer. |

## Plugin list

| Name | Description  |
| --- | --- | 
| [packer.nvim](https://github.com/wbthomason/packer.nvim) | Plugin manager. |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Collection of colorscheme for Neovim. |
| [onedark.vim](https://github.com/joshdick/onedark.vim) | Colorscheme based on Atom's default theme. |
| [monokai.nvim](https://github.com/tanvirtin/monokai.nvim) | Colorscheme based on Sublime text's default theme. |
| [darkplus.nvim](https://github.com/lunarvim/darkplus.nvim) | Colorscheme based on VS Code's default theme. |
| [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) | Helper functions to show icons. |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Pretty statusline. |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Pretty tabline. |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Shows indent guides in current file. |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | File explorer. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder. |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Extension for telescope. Allows fzf-like syntax in searches. |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Shows indicators in gutter based on file changes detected by git. |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration into Neovim/Vim. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Configures treesitter parsers. Provides modules to manipulate code. |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Creates textobjects based on treesitter queries. |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Toggle comments. |
| [vim-surround](https://github.com/tpope/vim-surround) | Add, remove, change "surroundings". |
| [targets.vim](https://github.com/wellle/targets.vim) | Creates new textobjects. |
| [vim-repeat](https://github.com/tpope/vim-repeat) | Add "repeat" support for plugins. |
| [vim-bbye](https://github.com/moll/vim-bbye) | Close buffers without closing the current window. |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Collection of modules. Used internaly by other plugins. |
| [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) | Add support for [.editoriconfig](https://editorconfig.org/) file. |


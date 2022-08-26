# Neovim Starter

Base configuration for Neovim. Meant to be unopinionated and minimal. The plugin manager ([packer.nvim](https://github.com/wbthomason/packer.nvim)) will be downloaded along side all plugins the first time you open Neovim.

All the code in this configuration is explained here:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)

## Requirements

* Neovim v0.7 or greater.
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

| Mode    | Key    | Action    |
| --- | --- | --- |
| Normal  | `<leader>h` | Go to first non empty character in line. |
| Normal  | `<leader>l` | Go to last non empty character in line. |
| Normal  | `<leader>a` | Select all text. |
| Normal  | `cp` | Copy selected text to clipboard. |
| Normal  | `cv` | Paste clipboard content. |
| Normal  | `<leader>w` | Save file. |
| Normal  | `<leader>bq` | Close current buffer. |
| Normal  | `<leader>bl` | Go to last active buffer. |

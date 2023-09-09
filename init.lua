local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('user.commands')
load('user.settings')
load('user.keymaps')
load('user.plugins')
load('user.colors')

vim.opt.rtp:prepend('~/.vim')
vim.opt.packpath = vim.opt.runtimepath:get()
vim.cmd('source ~/.config/nvim/vimrc')
-- vim.cmd('let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0')

-- pcall(vim.cmd.colorscheme, 'ayu')
pcall(vim.cmd.colorscheme, 'molokai')

local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

vim.opt.rtp:prepend('~/.vim')
vim.opt.packpath = vim.opt.runtimepath:get()
vim.cmd('source ~/.vimrc')

load('user.settings')
load('user.commands')
load('user.keymaps')
load('user.plugins')

pcall(vim.cmd.colorscheme, 'monokai')


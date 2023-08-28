local Plugin = {'github/copilot.vim'}

Plugin.config = function()
  vim.g.copilot_key = 'ctrl-j'
  vim.g.copilot_no_mappings = true
  vim.g.copilot_no_auto_accept = true
  vim.g.copilot_no_auto_accept_cr = true
  vim.g.copilot_no_auto_accept_space = true
  vim.g.copilot_no_auto_accept_tab = true
  vim.g.copilot_no_cr_map = true
  vim.g.copilot_no_space_map = true
  vim.g.copilot_no_tab_map = true
  vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

  -- next/prev
  -- vim.api.nvim_set_keymap("i", "<C-]>", 'copilot#Next()', { silent = true, expr = true })
  -- vim.api.nvim_set_keymap("i", "<C-[>", 'copilot#Prev()', { silent = true, expr = true })
end

return Plugin

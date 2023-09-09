local colors = {'ayu', 'molokai', 'tokyonight'}
pcall(vim.cmd.colorscheme, 'molokai')

function toggle_colorscheme()
  local current = vim.g.colors_name
  local next = colors[1]
  for i = 1, #colors do
    if colors[i] == current then
      if i == #colors then
        next = colors[1]
      else
        next = colors[i + 1]
      end
      break
    end
  end
  pcall(vim.cmd.colorscheme, next)
end

vim.keymap.set('n', '<leader>cs', ':lua toggle_colorscheme()<cr>')

for i = 1, #colors do
  vim.keymap.set('n', '<leader>c' .. i, ':lua pcall(vim.cmd.colorscheme, "' .. colors[i] .. '")<cr>')
end


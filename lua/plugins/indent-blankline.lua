local Plugin = {'lukas-reineke/indent-blankline.nvim', version = "v2.20.8"}

Plugin.name = 'indent_blankline'

Plugin.event = {'BufReadPost', 'BufNewFile'}

-- See :help indent-blankline-setup
Plugin.opts = {
  char = '▏',
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  use_treesitter = true,
  show_current_context = false
}

return Plugin

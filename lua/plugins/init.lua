local Plugins = {
  {'tpope/vim-fugitive'},
  {'tpope/vim-rhubarb'},
  {'shumphrey/fugitive-gitlab.vim'},
  {'wellle/targets.vim'},
  {'tpope/vim-repeat'},
  {'tpope/vim-commentary'},
  {'kyazdani42/nvim-web-devicons', lazy = true},
	{'SirVer/ultisnips'}, -- required in cmp
	{'airblade/vim-gitgutter'},
	{'bkad/CamelCaseMotion'},
  {'mattn/emmet-vim'},
  {'cuducos/yaml.nvim'},
  {'dense-analysis/ale'},
  {'towolf/vim-helm'},
  {'nvim-treesitter/nvim-treesitter-context'},
  {'wellle/targets.vim'},
  {'AndrewRadev/splitjoin.vim'},
  {dir = '~/.vim/bundle/vim-kubernetes'},
  -- {'lukas-reineke/indent-blankline.nvim', tag = 'v2.20.8'},
  -- {'andrewstuart/vim-kubernetes'},
  -- {'numToStr/Comment.nvim', config = true, event = 'VeryLazy'},

  -- Themes
  {'folke/tokyonight.nvim'},
  {'joshdick/onedark.vim'},
  {'tanvirtin/monokai.nvim'},
  {'lunarvim/darkplus.nvim'},
	-- {'fatih/vim-go'},
	{'ayu-theme/ayu-vim'},
  {'tomasr/molokai'},
  {'niscolas/nvim-godot'},
  {'kawre/leetcode.nvim'},
  {'ribelo/taskwarrior.nvim', config = true},
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }
}

return Plugins

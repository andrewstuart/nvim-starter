local Plugin = {'hrsh7th/nvim-cmp'}

Plugin.dependencies = {
  -- Sources
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  -- {'saadparwaiz1/cmp_luasnip'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-nvim-lsp-signature-help'},

  -- Snippets
  -- {'L3MON4D3/LuaSnip'},
  {'rafamadriz/friendly-snippets'},
	{"SirVer/ultisnips"},
	{"quangnguyen30192/cmp-nvim-ultisnips"},
}

Plugin.event = 'InsertEnter'

function Plugin.config()
  vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
	local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
  -- require("cmp_nvim_ultisnips").setup{}

  local cmp = require('cmp')
  -- local luasnip = require('luasnip')

  -- require('luasnip.loaders.from_vscode').lazy_load()

  local select_opts = {behavior = cmp.SelectBehavior.Select}

  -- See :help cmp-config
  cmp.setup({
    snippet = {
      expand = function(args)
				vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    sources = {
			{name = 'ultisnips'},
      {name = 'path'},
      {name = 'nvim_lsp'},
      {name = 'nvim_lsp_signature_help' },
      {name = 'buffer', keyword_length = 3},
      -- {name = 'luasnip', keyword_length = 2},
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
        local menu_icon = {
          nvim_lsp = 'λ',
          -- luasnip = '⋗',
          buffer = 'Ω',
          path = '🖫',
        }

        item.menu = menu_icon[entry.source.name]
        return item
      end,
    },
    -- See :help cmp-mapping
    mapping = {
			-- ['<C-Space>'] = cmp.mapping.complete(),
			['<C-space>'] = cmp.mapping(
			function(fallback)
				cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
			end,
			{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
			),
			['<TAB>'] = cmp.mapping(
			function(fallback)
				cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
			end,
			{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
			),
			['<S-Tab>'] = cmp.mapping(
			function(fallback)
				cmp_ultisnips_mappings.jump_backwards(fallback)
			end,
			{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
			),
      ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
      ['<Down>'] = cmp.mapping.select_next_item(select_opts),

      ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
      ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),

      ['<C-e>'] = cmp.mapping.abort(),
      ['<S-CR>'] = cmp.mapping.confirm({select = true}),
      ['<CR>'] = cmp.mapping.confirm({select = false}),

      -- ['<C-f>'] = cmp.mapping(function(fallback)
      --   if luasnip.jumpable(1) then
      --     luasnip.jump(1)
      --   else
      --     fallback()
      --   end
      -- end, {'i', 's'}),

      -- ['<C-b>'] = cmp.mapping(function(fallback)
      --   if luasnip.jumpable(-1) then
      --     luasnip.jump(-1)
      --   else
      --     fallback()
      --   end
      -- end, {'i', 's'}),
    },
  })
end

return Plugin

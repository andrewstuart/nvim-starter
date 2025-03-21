local Plugin = {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}

Plugin.name = "codecompanion"
Plugin.event = "VeryLazy"

function Plugin.config()
  require("codecompanion").setup({
    strategies = {
      chat = {
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
    },
    adapters = {
      anthropic = function()
        return require("codecompanion.adapters").extend("anthropic", {
          env = {
            -- read from file
            api_key = vim.fn.readfile(vim.fn.expand("~/.config/nvim-secret/anthropic_key"))[1],
          },
        })
      end,
    },

    -- -- Optional, defaults to `false`
    -- auto_open = true,
    -- -- Optional, defaults to `false`
    -- auto_close = true,
    -- -- Optional, defaults to `false`
    -- auto_insert = true,
    -- -- Optional, defaults to `false`
    -- auto_format = true,
  })
end

function Plugin.init()
  -- See :help codecompanion
  vim.keymap.set("n", "<leader>cc", "<cmd>CodeCompanion<cr>")
  vim.keymap.set("n", "<leader>ch", "<cmd>CodeCompanionChat<cr>")
  vim.keymap.set("n", "<leader>cC", "<cmd>CodeCompanionClose<cr>")
  vim.keymap.set("n", "<leader>cf", "<cmd>CodeCompanionFormat<cr>")
  vim.keymap.set("n", "<leader>ci", "<cmd>CodeCompanionInsert<cr>")
end


return Plugin

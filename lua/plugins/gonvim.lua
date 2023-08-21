local Plugin = {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup({
      luasnip = true,
    })

    local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        require('go.format').goimport()
      end,
      group = format_sync_grp,
    })


    -- set nvim keymap for FileType go
    -- vim.api.nvim_create_autocmd("BufRead", {
    --   pattern = "*.go",
    --   callback = function()
    --     vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>GoRun<CR>", {noremap = true})
    --     vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>GoBuild<CR>", {noremap = true})
    --     vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>GoTest<CR>", {noremap = true})
    --     vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>GoTestFunc<CR>", {noremap = true})
    --     vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>GoDoc<CR>", {noremap = true})
    --     vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>GoRename<CR>", {noremap = true})
    --   end,
    --   group = format_sync_grp,
    -- })

    vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>GoRun<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>GoBuild<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>GoTest<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>GoTestFunc<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>GoDoc<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>GoRename<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>GoCoverage<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>GoCoverageBrowser<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>GoSameIds<CR>", {noremap = true})

    -- vim.cmd('au FileType go nmap <leader>a GoAlt')
    -- vim.cmd('au FileType go nmap <leader>b <Plug>(go-build)')
    -- vim.cmd('au FileType go nmap <leader>t <Plug>(go-test)')
    -- vim.cmd('au FileType go nmap <leader>tf <Plug>(go-test-func)')
    -- vim.cmd('au FileType go nmap <leader>c <Plug>(go-coverage-toggle)')
    -- vim.cmd('au FileType go nmap <leader>gb <Plug>(go-coverage-browser)')
    -- vim.cmd('au FileType go nmap <leader>gd <Plug>(go-doc)')
    -- vim.cmd('au FileType go nmap <leader>gs <Plug>(go-sameids-toggle)')
    -- -- vim.cmd('" au FileType go nmap <leader>gv <Plug>(go-doc-vertical)')
    -- vim.cmd('au FileType go nmap <leader>i <Plug>(go-info)')
    -- vim.cmd('au FileType go nmap <leader>gi <Plug>(go-install)')
    -- vim.cmd('au FileType go nmap <leader>ge <Plug>(go-iferr)')
    -- vim.cmd('au FileType go nmap <leader>gr <Plug>(go-rename)')
    -- vim.cmd('au FileType go nmap <leader>s <Plug>(go-implements)')
    -- -- vim.cmd('" au FileType go nested :TagbarOpen')
    -- vim.cmd('au FileType go nmap <leader>d :!dlv debug .<CR>')
    -- vim.cmd('au FileType go nmap <leader>mm :call BGMake("make")<CR>')
    -- vim.cmd('au FileType go nmap <leader>mi :call BGMake("make install")<CR>')

  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}

return Plugin

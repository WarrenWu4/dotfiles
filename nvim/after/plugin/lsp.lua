_G.vim = vim
local lsp_zero = require('lsp-zero')

lsp_zero.preset('recommended')

-- default key bindings for each active server
lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)
end)

lsp_zero.setup()

-- using mason to install lsp servers
require('mason').setup({})
require('mason-lspconfig').setup({
  -- ensure the following language lsp are installed:
  -- [c++: clangd, java: java-language-server, python: pyright, javascript & typescript: tsserver]
  -- ensure_installed = {"pyright", "tsserver"},
  handlers = {
    lsp_zero.default_setup,
  },
})

-- autocomplete mappings
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})


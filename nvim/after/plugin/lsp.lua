local lsp_zero = require('lsp-zero')

-- default key bindings for each active server
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- using mason to install lsp servers
require('mason').setup({})
require('mason-lspconfig').setup({
  -- ensure the following language lsp are installed:
  -- [c++: clangd, java: java-language-server, python: pyright, javascript & typescript: tsserver]
  ensure_installed = {"pyright", "tsserver"},
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




local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set({ 'n', 'x', 'v' }, "<leader>;", function()
        vim.lsp.buf.format({ async = false, timeout_ms = 2500 })
    end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("i", "<M-f>", function() vim.lsp.buf.completion() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'tsserver', 'rust_analyzer', 'jdtls', 'lua_ls', 'html', 'cssls', 'denols'},
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
    },
    formatting = lsp_zero.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
        ['<C-y>'] = cmp.mapping.complete(),
    }),
})
-- Setting up Bootstrap for cmp
local lspconfig = require('lspconfig')

-- Disabling default formatting for tsserver
lspconfig.tsserver.setup {
  filetype = {'tsx', 'ts'},
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
  -- your existing setup for tsserver (if any)
}

lspconfig.cssls.setup {
  filetypes = { 'scss', 'css' }, -- Make sure to include 'scss' here
  on_attach = function(client, bufnr)
    -- Your existing on_attach function code
    client.resolved_capabilities.document_formatting = false
  end,
  -- Any other configuration options for the SCSS language server
}
lspconfig.html.setup{
    filetype = {'html'},
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
    end,
}
--Rust Tools Config
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
    tools = {
        hover_actions = {
            auto_focus = true,
        },
    },
})

-- Emmet for HTML, CSS Snippets

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true



-- Set up lspconfig.
local lspconfig = require "lspconfig"
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- local on_attach = require("plugins.configs.lspconfig").on_attach

local servers = {
    "sqlls",
    "html",
    "cssls",
    "volar",
    "gopls",
    "jsonls",
    "lua_ls",
    "tsserver",
    "emmet_ls",
    "dockerls",
    "tailwindcss",
    "docker_compose_language_service"
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        -- on_attach = on_attach,
        capabilities = capabilities,
    }
end

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,

    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {},
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
}


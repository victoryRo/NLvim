-- Set up lspconfig.
-- local lspconfig = require "lspconfig"
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

-- Code from ufo plugin
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup({
        capabilities = capabilities
    })
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

-- table from lsp severity to vim severity.
local severity = {
    "error",
    "warn",
    "info",
    "info", -- map both hint and info to info?
}
vim.lsp.handlers["window/showMessage"] = function(err, method, params, client_id)
    vim.notify(method.message, severity[params.type])
end


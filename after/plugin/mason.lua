require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = {
        "sqls",
        "html",
        "cssls",
        "volar",
        "gopls",
        "jsonls",
        "clangd",
        "lua_ls",
        "tsserver",
        "emmet_ls",
        "dockerls",
        "phpactor",
        "docker_compose_language_service",
    },
    automatic_installation = true,
}

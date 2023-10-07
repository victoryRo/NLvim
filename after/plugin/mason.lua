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
        "docker_compose_language_service",
    },
    automatic_installation = true,
}

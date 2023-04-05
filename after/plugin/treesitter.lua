vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)

require'nvim-treesitter.configs'.setup {
    -- autotag plugin
    autotag = {
        enable = true,
    },

    -- autopairs plugin
    autopairs = {
        enable = true,
    },

    -- ts rainbow plugin
    rainbow = {
        enable = true,
        -- list of languages you want to disable the plugin for
        disable = { "jsx", "cpp" },
        -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = require 'ts-rainbow'.strategy.global,
    },

    ensure_installed = {
        "po",
        "go",
        "vim",
        "lua",
        "css",
        "php",
        "sql",
        "vue",
        "bash",
        "html",
        "json",
        "scss",
        "yaml",
        "regex",
        "jsdoc",
        "gomod",
        "gosum",
        "gowork",
        "markdown",
        "gitcommit",
        "gitignore",
        "git_config",
        "javascript",
        "typescript",
        "markdown_inline",
    },

    sync_install = false,
    auto_install = true,
    ignore_install = {},

    highlight = {
        enable = true,
        -- disable = { "c", "rust" },
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}

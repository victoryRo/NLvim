local ft = {}

ft.support_filetypes = {
    "*.ts",
    "*.tsx",
    "*.js",
    "*.jsx",
    "*.html",
    "*.json",
    "*.go",
    "*.c",
    "*.py",
    "*.cpp",
    "*.rs",
    "*.h",
    "*.hpp",
    "*.lua",
    "*.vue",
    "*.yaml",
    "*.css",
}

ft.exclude_filetypes = {
    aerial = true,
    dashboard = true,
    help = true,
    lspinfo = true,
    lspsagafinder = true,
    packer = true,
    checkhealth = true,
    man = true,
    mason = true,
    NvimTree = true,
    ["neo-tree"] = true,
    plugin = true,
    lazy = true,
    TelescopePrompt = true,
    [""] = true, -- because TelescopePrompt will set a empty ft, so add this.
    alpha = true,
    toggleterm = true,
    sagafinder = true,
    sagaoutline = true,
    better_term = true,
    fugitiveblame = true,
    Trouble = true,
    qf = true,
    Outline = true,
    starter = true,
    NeogitPopup = true,
    NeogitStatus = true,
    DiffviewFiles = true,
    DiffviewFileHistory = true,
    DressingInput = true,
    spectre_panel = true,
    zsh = true,
    registers = true,
    startuptime = true,
    OverseerList = true,
    Navbuddy = true,
    noice = true,
    notify = true,
    ["dap-repl"] = true,
    saga_codeaction = true,
    sagarename = true,
}

require('hlchunk').setup({
    chunk = {
        enable = true,
        notify = true,
        use_treesitter = true,
        support_filetypes = ft.support_filetypes,
        exclude_filetypes = ft.exclude_filetypes,
        chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
        },
        style = {
            { fg = "#669999" },
            { fg = "#c21f30" },
        },
        textobject = "",
        max_file_size = 1024 * 1024,
        error_sign = true,
    },

    indent = {
        enable = true,
        use_treesitter = true,
        chars = {
            "│",
        },
        style = {
            "#595959",
        },
    },

    line_num = {
        enable = false,
        use_treesitter = true,
        style = "#669999",
    },

    blank = {
        enable = false,
        chars = {
            "․",
        },
        style = {
            vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
        },
    },
 })


vim.opt.list = true
-- vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    -- char = "▏",
    show_current_context = true,
    buftype_exclude = {"terminal"},
    show_trailing_blankline_indent = false,
    filetype_exclude = {"help", "terminal", "packer", "mason"},
    context_patterns = {
        "class",
        "function",
        "method",
        "^if",
        "^while",
        "^for",
        "^object",
        "^table",
        "^type",
        "^import",
        "block",
        "arguments"
    }
}


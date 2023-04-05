local codewindow = require('codewindow')

codewindow.setup {
    active_in_terminals = false,
    auto_enable = false,
    exclude_filetypes = { "neo-tree" },
    max_minimap_height = nil,
    max_lines = nil,
    minimap_width = 12,
    use_lsp = true,
    use_treesitter = true,
    use_git = true,
    width_multiplier = 4,
    z_index = 1,
    show_cursor = true,
    window_border = 'single'
}


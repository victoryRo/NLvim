require('go').setup({
    -- notify: use nvim-notify
    notify = true,
    -- auto commands
    auto_format = true,
    auto_lint = true,
    -- linters: revive, errcheck, staticcheck, golangci-lint
    linter = 'revive',
    -- linter_flags: e.g., {revive = {'-config', '/path/to/config.yml'}}
    linter_flags = {},
    -- lint_prompt_style: qf (quickfix), vt (virtual text)
    lint_prompt_style = 'qf',
    -- formatter: goimports, gofmt, gofumpt, lsp
    formatter = 'goimports',
    -- maintain cursor position after formatting loaded buffer
    maintain_cursor_pos = false,
    -- test flags: -count=1 will disable cache
    test_flags = {'-v'},
    test_timeout = '30s',
    test_env = {},
    -- show test result with popup window
    test_popup = true,
    test_popup_auto_leave = false,
    test_popup_width = 80,
    test_popup_height = 10,
    -- test open
    test_open_cmd = 'edit',
    -- struct tags
    tags_name = 'json',
    tags_options = {'json=omitempty'},
    tags_transform = 'snakecase',
    tags_flags = {'-skip-unexported'},
    -- quick type
    quick_type_flags = {'--just-types'},
})

 -- disable all linters as that is taken care of by coc.nvim
 vim.g['go_diagnostics_enabled'] = 1
 vim.g['go_metalinter_enabled'] = '[]'
 -- don't jump to errors after metalvnter is invoked
 vim.g['go_jump_to_error'] = 0
 -- run go imports on file save
 vim.g['go_fmt_command'] = 'goimports'
 -- automatically highlight variable your cursor is on
 vim.g['go_auto_sameids'] = 0

 -- syntax highlighting
 vim.g['go_highlight_types'] = 1
 vim.g['go_highlight_fields'] = 1
 vim.g['go_highlight_functions'] = 1
 vim.g['go_highlight_function_calls'] = 1
 vim.g['go_highlight_operators'] = 1
 vim.g['go_highlight_extra_types'] = 1
 vim.g['go_highlight_build_constraints'] = 1
 vim.g['go_highlight_generate_tags'] = 1

 vim.cmd [[
    augroup NvimGo
        autocmd!
        autocmd User NvimGoLintPopupPost wincmd p
    augroup END
 ]]

require("better_escape").setup {
    mapping = { "jk" },
    timeout = vim.o.timeoutlen,
    clear_empty_lines = false,
    -- keys = "<Esc>",
    -- example(recommended)
    keys = function()
      return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
    end,
}

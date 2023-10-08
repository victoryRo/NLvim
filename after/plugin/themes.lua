local colorscheme = "humanoid"
-- local colorscheme = "noir"
-- local colorscheme = "one"
-- local colorscheme = "vscode"

-- Nyctophilia
-- local colorscheme = "umbra"

-- OneNord
-- local colorscheme = "onenord"
-- require('onenord').setup()

-- gruvbox
-- local colorscheme = "gruvbox-baby"
-- vim.g.gruvbox_baby_telescope_theme = 1
-- vim.g.gruvbox_baby_function_style = "bold"
-- vim.g.gruvbox_baby_variable_style = "bold"
-- vim.g.gruvbox_baby_background_color = "medium"
-- vim.g.gruvbox_baby_use_original_palette = true
-- vim.g.gruvbox_baby_transparent_mode = 0

-- Load the colorscheme
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    vim.o.background = "dark"
    -- vim.o.background = "light"
    if not ok then
        vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

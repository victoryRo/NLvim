-- local colorscheme = "ayu-dark"
-- local colorscheme = "ayu-light"
-- local colorscheme = "ayu-mirage"

-- local colorscheme = "one"
-- local colorscheme = "solarized"
-- local colorscheme = "everforest"

-- local colorscheme = "nord"
-- local colorscheme = "vscode"
-- local colorscheme = "zephyr"
local colorscheme = "OceanicNext"
-- local colorscheme = "one_monokai"

-- gruvbox
-- local colorscheme = "gruvbox-baby"
-- vim.g.gruvbox_baby_telescope_theme = 1
-- vim.g.gruvbox_baby_transparent_mode = 0

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    vim.o.background = "dark" -- or "light" for light mode
    if not ok then
        vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

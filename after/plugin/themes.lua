-- Enable telescope theme
-- vim.g.gruvbox_baby_telescope_theme = 1
-- Enable transparent mode
-- vim.g.gruvbox_baby_transparent_mode = 1
-- local colorscheme = "gruvbox-baby"

-- local colorscheme = "ayu-dark"
-- local colorscheme = "ayu-light"
-- local colorscheme = "ayu-mirage"

-- local colorscheme =  "github_dark"
-- local colorscheme =  "github_dimmed"
-- local colorscheme =  "nord"
local colorscheme =  "vscode"
-- local colorscheme =  "zephyr"
-- local colorscheme =  "one-nvim"
-- local colorscheme =  "deus"
-- local colorscheme = "OceanicNext"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    vim.o.background = "dark" -- or "light" for light mode
    if not ok then
        vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end


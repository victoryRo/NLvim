-- local colorscheme = "humanoid"
-- local colorscheme = "vscode"
-- local colorscheme = "warlock"
-- local colorscheme = "melange"

-- Zenbones
local colorscheme = "forestbones" -- verde
-- local colorscheme = "zenburned" -- medio
-- local colorscheme = "seoulbones" -- suave

-- Neon
-- local colorscheme = "neon"
-- vim.g.neon_style = "doom"
-- vim.g.neon_bold = true

-- OneNord
-- local colorscheme = "onenord"
-- require('onenord').setup()

-- require('colorbuddy').colorscheme('onebuddy')

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

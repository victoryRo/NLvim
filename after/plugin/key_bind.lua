local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-------------------------------------------------------- NORMAL

-- Main keybind
map("n", "<leader>q", ":q<cr>", opt)
map("n", "<leader>w", ":w<cr>", opt)
map("n", "<leader>x", ":bdelete<cr>", opt)

--  Move between windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)

-- Live server
map("n", "sl", ":LiveServer start<CR>", opt)
map("n", "st", ":LiveServer stop<CR>", opt)

-- Symbols
map("n", "su", ":SymbolsOutline<CR>", opt)
-- map("n", "su", ":SymbolsOutlineOpen<CR>", opt)
map("n", "sk", ":SymbolsOutlineClose<CR>", opt)

-- Sidebar neotree
map("n", "so", ":Neotree left<CR>", opt)
map("n", "sm", ":Neotree close<CR>", opt)
map("n", "sf", ":Neotree float<CR>", opt)
map("n", "sg", ":Neotree git_status<CR>", opt)
map("n", "F", ":Neotree reveal<CR>", opt)

-- Division
map("n", "av", ":vsplit<CR>", opt)
map("n", "ah", ":split<CR>", opt)
map("n", "au", ":resize +5<CR>", opt)
map("n", "an", ":resize -5<CR>", opt)
map("n", "al", ":vertical resize +15<CR>", opt)
map("n", "ar", ":vertical resize -17<CR>", opt)

-- Telescope
map("n", "fb", ":Telescope buffers<CR>", opt)
map("n", "fl", ":Telescope live_grep<CR>", opt)
map("n", "ft", ":Telescope help_tags<CR>", opt)
map("n", "ff", ":Telescope find_files<CR>", opt)
map("n", "fg", ":Telescope git_status<CR>", opt)
map("n", "fh", ":Telescope command_history<CR>", opt)

-- Packer
map("n", "ps", ":PackerSync<cr>", opt)
map("n", "pe", ":PackerStatus<cr>", opt)
map("n", "pu", ":PackerUpdate<cr>", opt)
map("n", "pp", ":PackerProfile<cr>", opt)
map("n", "pi", ":PackerInstall<cr>", opt)
map("n", "pb", ":PackerClean<cr>", opt)
map("n", "pc", ":PackerCompile profile=true<cr>", opt)

-- Neogit Diffview
map("n", "np", ":Neogit", opt)
map("n", "N", ":Neogit<CR>", opt)
map("n", "no", ":DiffviewOpen<CR>", opt)
map("n", "nc", ":DiffviewClose<CR>", opt)
map("n", "nr", ":DiffviewRefresh<CR>", opt)
map("n", "nf", ":DiffviewFocusFiles<CR>", opt)
map("n", "nh", ":DiffviewFileHistory<CR>", opt)

-- LSP
map("n", "lr", "<cmd>Lspsaga rename<cr>", opt)
map("n", "K", "<cmd>Lspsaga hover_doc<cr>", opt)
map("n", "lf", '<cmd>Lspsaga lsp_finder<cr>', opt)
map("n", "la", "<cmd>Lspsaga code_action<cr>", opt)
map("n", "ls", '<cmd>Lspsaga signature_help<cr>', opt)
map("n", "lo", '<cmd>Lspsaga preview_definition<cr>', opt)
map("n", "R", '<cmd>lua vim.lsp.buf.references()<cr>', opt)
map("n", "ld", '<cmd>lua vim.lsp.buf.definition()<cr>', opt)
map("n", "ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
map("n", "lp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
map("n", "le", "<cmd>Lspsaga show_line_diagnostics<cr>", opt)
map("n", "lt", '<cmd>lua vim.lsp.buf.type_definition()<cr>', opt)

--------------------------------------------------------- VISUAL

--  Movement -> or <-
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

--  Move lines up or down
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

--------------------------------------------------------- NOICE

vim.keymap.set("n", "rl", function()
    require("noice").cmd("last")
end)

vim.keymap.set("n", "rh", function()
    require("noice").cmd("history")
end)

vim.keymap.set("n", "re", function()
    require("noice").cmd("errors")
end)

vim.keymap.set("n", "rs", function()
    require("noice").cmd("stats")
end)

vim.keymap.set("n", "rt", function()
    require("noice").cmd("telescope")
end)

------------------------------------------------------- MINIMAP

local minimap = require("codewindow")

vim.keymap.set("n", "mo", function()
    minimap.open_minimap()
end)

vim.keymap.set("n", "mc", function()
    minimap.close_minimap()
end)

vim.keymap.set("n", "mm", function()
    minimap.toggle_minimap()
end)

vim.keymap.set("n", "mf", function()
    minimap.toggle_focus()
end)

---------------------------------------------------------- TERM

local Terminal = require('toggleterm.terminal').Terminal

function toggle_float()
    local float = Terminal:new({ direction = "float" })
    return float:toggle()
end

map("n", "tt", ":ToggleTerm<cr>", opt)
map("n", "tf", "<cmd>lua toggle_float()<CR>", opt)

--------------------------------------------------------------/

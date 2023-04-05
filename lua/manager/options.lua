-- Configuration options
local opt = vim.opt
local g = vim.g

g.dynamicpadding = true
g.mapleader = " "
opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = false
opt.cmdheight = 1
opt.conceallevel = 0

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.timeoutlen = 500
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "b,s,<,>,[,],h,l"

-- [[ Context ]]
--opt.colorcolumn = '120'        -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column
opt.numberwidth = 2
opt.ruler = false

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

vim.wo.wrap = false               -- boll: show complete line
-- vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question

-- [[ Theme ]]
opt.mouse = "a"
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.showtabline = 2
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches
opt.fillchars = { eob = " " }

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for
opt.autoindent = true            -- autoindent automatic

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end

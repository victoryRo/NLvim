return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Theme colors
    use "hardselius/warlock"
    use "luisiacc/gruvbox-baby"
    use "Mofiqul/vscode.nvim"
    use "rmehri01/onenord.nvim"
    use {
        "Th3Whit3Wolf/onebuddy",
        requires = "tjdevries/colorbuddy.vim",
    }
    use "humanoid-colors/vim-humanoid-colorscheme"

    -- Colorizer
    use { "norcalli/nvim-colorizer.lua" }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
         run = ":TSUpdate"
    }

    -- Lua line
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- Buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Neo tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    }

    -- Comment
    use { "numToStr/Comment.nvim" }

    -- Indent line
    use { "shellRaining/hlchunk.nvim" }

    -- Better escape
    use { "max397574/better-escape.nvim" }

    -- Ts autotag
    use { "windwp/nvim-ts-autotag" }

    -- Ts rainbow
    use { "HiPhish/nvim-ts-rainbow2" }

    -- Auto pairs
    use { "windwp/nvim-autopairs" }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- LSP completion snip buffer cmdline cmp
    use { "neovim/nvim-lspconfig" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "hrsh7th/nvim-cmp" }

    -- For luasnip users.
    use { "L3MON4D3/LuaSnip" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "rafamadriz/friendly-snippets" }

    -- Tabnine autocomplete
 	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

    -- Mason lsp installer
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }
    -- Show function signature when you type
    use { "ray-x/lsp_signature.nvim" }

    -- Lsp format pending
    -- use { "lukas-reineke/lsp-format.nvim" }
    -- use { "jose-elias-alvarez/null-ls.nvim" }

    -- Lsp kind
    use { "onsails/lspkind.nvim" }
    -- Lsp saga
    use { 'kkharji/lspsaga.nvim' }

    -- nvim-go
    use {
        "crispgm/nvim-go",
        requires = {
            "nvim-lua/plenary.nvim",
        }
    }

    -- live server
    use { "manzeloth/live-server" }

    -- notify
    use { "rcarriga/nvim-notify" }

    -- Symbols-outline.nvim
    use { "simrat39/symbols-outline.nvim" }

    -- Mini map
    use { "gorbit99/codewindow.nvim" }

    -- Toggle term
    use {"akinsho/toggleterm.nvim", tag = "*" }

    -- Presence
    use { "andweeb/presence.nvim" }

    -- Git gitsigns
    use { "lewis6991/gitsigns.nvim" }
    -- Neogit
    use { 'NeogitOrg/neogit', requires = 'nvim-lua/plenary.nvim' }
    -- Diff view
    use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }
    -- Web icons
    use { "nvim-tree/nvim-web-devicons" }

    -- UFO fold
    use { "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async"}

    -- Highlight the same word
    use { "itchyny/vim-cursorword" }

end)

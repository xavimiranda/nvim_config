return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use 'karb94/neoscroll.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'folke/tokyonight.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --completions
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets'}
    }
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    --lsp plugins
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    }

    -- debugging
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'nvim-telescope/telescope-dap.nvim'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)

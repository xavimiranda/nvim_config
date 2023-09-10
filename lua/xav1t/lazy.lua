-- setup for the lazy plug in manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- telescope import
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- colorscheme rose-pine import
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
    -- treesitter import
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- undo-tree import
    { "mbbill/undotree" },

    -- vim-fugitive import
    { "tpope/vim-fugitive" },

    -- lsp import
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    -- noice
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },

    --DAP
    { "rcarriga/nvim-dap-ui",           dependencies = { "mfussenegger/nvim-dap" } },
    { 'theHamsta/nvim-dap-virtual-text' },
    -- javascript da
    { "mxsdev/nvim-dap-vscode-js",      dependencies = { "mfussenegger/nvim-dap" } },
    {
        "microsoft/vscode-js-debug",
        build = function()
            local path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"
            vim.fn.system("cd " .. path .. " && npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && move dist out")
        end
    },
    -- python da
    { "mfussenegger/nvim-dap-python", dependencies = { "mfussenegger/nvim-dap" } },

    --goto-preview
    { 'rmagatti/goto-preview' },

    -- leap
    { "ggandor/leap.nvim",            config = function() require('leap').add_default_mappings() end },

    --lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", config = function() require('lualine').setup() end },
    },

    --nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
    },

    -- nvim -comments
    {
        'numToStr/Comment.nvim',
        lazy = false,
        config=function() require('Comment').setup() end
    }
})

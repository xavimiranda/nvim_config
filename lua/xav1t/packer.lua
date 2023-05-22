return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-tree/nvim-web-devicons'
	use 'folke/tokyonight.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'

        use 'nvim-treesitter/nvim-treesitter'
	use {
		'nvim-telescope/telescope.nvim', 
                tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}	

        --lsp plugins
        use {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig'
        }
end)

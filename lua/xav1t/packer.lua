return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-tree/nvim-web-devicons'
	use 'folke/tokyonight.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'

        use 'nvim-treesitter/nvim-treesitter'
end)

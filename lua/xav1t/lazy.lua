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
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
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
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	
	-- undo-tree import
	{"mbbill/undotree"},

	-- vim-fugitive import 
	{"tpope/vim-fugitive"}
})


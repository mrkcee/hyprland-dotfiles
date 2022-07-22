return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'feline-nvim/feline.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use { 
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
		}
	}
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
end)

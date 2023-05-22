vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use({ 
		'Mofiqul/dracula.nvim',
		as = "dracula"

	})

	use {
		'embark-theme/vim',
		as = 'embark'
	}

	use {
		'shaunsingh/nord.nvim',
		as = 'nord'
	}


	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			    -- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
				pcall(vim.cmd, 'MasonUpdate')
				end,
			},
				{'williamboman/mason-lspconfig.nvim'}, -- Optional

			    -- Autocompletion
				{'hrsh7th/nvim-cmp'},     -- Required
				{'hrsh7th/cmp-nvim-lsp'}, -- Required
				{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use {
		'nvim-treesitter/nvim-treesitter', 
		{
			run = ':TSUpdate'
		}
	}
end)

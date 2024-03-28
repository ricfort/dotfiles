vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.5',
  	requires = { {'nvim-lua/plenary.nvim'} }
   }
    use({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function ()
		vim.cmd('colorscheme rose-pine')
	end
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v3.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},     -- Required
		    {'hrsh7th/cmp-nvim-lsp'}, -- Required
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lua'},
	    	    {'rafamadriz/friendly-snippets'},
		    {'L3MON4D3/LuaSnip'},     -- Required
	    }
    }
      use("github/copilot.vim")
      use('Mgenuit/nvim-dap-kotlin')
      use({
          "iamcco/markdown-preview.nvim",
          run = function() vim.fn["mkdp#util#install"]() end,
      })
  end)

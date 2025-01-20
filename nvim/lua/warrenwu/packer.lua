vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use { "sainnhe/gruvbox-material", as = "gruvbox-material" }

    use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v3.x',
	    requires = {
		    --- Uncomment these if you want to manage the language servers from neovim
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'L3MON4D3/LuaSnip'},
	    }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {"m4xshen/autoclose.nvim"}

    -- use('theprimeagen/harpoon')
    -- use('mbbill/undotree')

end)

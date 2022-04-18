-- Boostrap packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end
-- Plugins
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
	-- Colorscheme & Aeisthetics
	use 'chriskempson/base16-vim'
    use 'itchyny/lightline.vim'
    use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
    }

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp_extensions.nvim'
	use 'nvim-lua/completion-nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use {
        'jose-elias-alvarez/null-ls.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-treesitter/nvim-treesitter'

    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    -- Snippet engine
    use 'L3MON4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"

    -- Lang tools
    use 'simrat39/rust-tools.nvim'
    use 'tomlion/vim-solidity'

	--Telescope
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Lang plugins
    use 'pangloss/vim-javascript'
    use 'leafgarland/typescript-vim'
    use 'peitalin/vim-jsx-typescript'
    use 'jparise/vim-graphql'
    use 'mattn/emmet-vim'
    use 'cespare/vim-toml'
    use 'jvirtanen/vim-hcl'
    use 'hashivim/vim-terraform'
    use 'stephpy/vim-yaml'
    use 'rust-lang/rust.vim'

    -- Comments
    use 'numToStr/Comment.nvim'

    -- Git
    use 'tpope/vim-fugitive'
    --Formatting
    use 'sbdchd/neoformat'
    -- Misc
    use 'ThePrimeagen/vim-be-good'
	use {
	  'ThePrimeagen/harpoon',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
end)

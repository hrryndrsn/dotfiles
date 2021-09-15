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
	use 'tjdevries/colorbuddy.vim'
	use 'tjdevries/gruvbuddy.nvim'
    use 'itchyny/lightline.vim'
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp_extensions.nvim'
	use 'nvim-lua/completion-nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use {
        'jose-elias-alvarez/null-ls.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }
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
    use 'stephpy/vim-yaml'
    use 'rust-lang/rust.vim'
    -- Rust plugins - https://sharksforarms.dev/posts/neovim-rust/
    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    -- Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'
    -- Other usefull completion sources
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    -- See hrsh7th's other plugins for more completion sources!
    -- To enable more of the features of rust-analyzer, such as inlay hints and more!
    use 'simrat39/rust-tools.nvim'
    -- Snippet engine
    use 'hrsh7th/vim-vsnip'
    -- Comments
    use 'tpope/vim-commentary'
    -- Git
    use 'tpope/vim-fugitive'
    --Formatting
    use 'sbdchd/neoformat'
    -- Misc
    use 'ThePrimeagen/vim-be-good'
end)

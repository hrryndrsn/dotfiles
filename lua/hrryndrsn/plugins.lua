-- Boostrap packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end
-- Plugins
return require('packer').startup(function(use)
	-- Colorscheme
	use 'chriskempson/base16-vim'
	use 'tjdevries/colorbuddy.vim'
	use 'tjdevries/gruvbuddy.nvim'
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp_extensions.nvim'
	use 'nvim-lua/completion-nvim'
	--Telescope
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
-- Automatically update packer in plugins change

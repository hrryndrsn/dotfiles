-- seperate modules
require 'hrryndrsn/plugins'
require 'hrryndrsn/telescope'
require 'hrryndrsn/nvim-lspconfig'

-- TODO Move to own file
--options
vim.o.signcolumn = 'yes'

--Colorscheme
vim.opt.termguicolors = true
vim.cmd[[colorscheme base16-gruvbox-dark-hard]]
vim.cmd [[call Base16hi("Comment", g:base16_gui09, "", g:base16_cterm09, "", "", "")]]

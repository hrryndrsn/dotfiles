-- seperate modules
require 'hrryndrsn/settings'
require 'hrryndrsn/plugins'
require 'hrryndrsn/telescope'
require 'hrryndrsn/nvim-lspconfig'

-- TODO Move to own file
--Colorscheme
vim.opt.termguicolors = true
require('colorbuddy').colorscheme('gruvbuddy')
-- use tab to trigger completion
vim.api.nvim_set_keymap('i', '<TAB>', '<Plug>(completion_smart_tab)',  { noremap = false, silent = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', '<Plug>(completion_smart_s_tab)',  { noremap = false, silent = true })
-- navigate through completion menu using <C-n> and <C-p>
vim.api.nvim_set_keymap('i', '<expr> <Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<expr> <S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"',  { noremap = true, silent = true })



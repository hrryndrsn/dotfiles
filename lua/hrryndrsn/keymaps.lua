-- Keymaps
local keymap = vim.api.nvim_set_keymap
-- GENERAL
keymap('n', '<LEFT>', ':echo "Use h"<CR>', { noremap = true, silent = true })
keymap('n', '<RIGHT>', ':echo "Use l"<CR>', { noremap = true, silent = true })
keymap('n', '<UP>', ':echo "Use k"<CR>', { noremap = true, silent = true })
keymap('n', '<DOWN>', ':echo "Use j"<CR>', { noremap = true, silent = true })
-- Quickscope exit and write
keymap('n', '<ESC>', ':q<CR>', { noremap = true, silent = true })
keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
-- Paste over selection
keymap('v', '<leader>p', 'p "_dP', { noremap = true, silent = true })
-- Y copy from cursor to end of line
keymap('n', 'Y', 'y$', { noremap = true, silent = true })
-- Keep cursor centered when scrolling search matches
keymap('n', 'n', 'nzzzv', { noremap = true, silent = true })
keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true })
keymap('n', 'J', 'mzJ`z', { noremap = true, silent = true })
-- Undo breakpoints
keymap('i', ',', ',<c-g>u', { noremap = true, silent = true })
keymap('i', '.', '.<c-g>u', { noremap = true, silent = true })
keymap('i', '!', '!<c-g>u', { noremap = true, silent = true })
keymap('i', '?', '?<c-g>u', { noremap = true, silent = true })
-- Jumplist mutations
keymap('n', '<expr> k', '(v:count > 5 ? "m\'" . v:count : "") . \'k\'', { noremap = true, silent = true })
keymap('n', '<expr> j', '(v:count > 5 ? "m\'" . v:count : "") . \'j\'', { noremap = true, silent = true })
-- Moving text
keymap('v', 'J', ':m \'>+1<CR>gv=gv',  { noremap = true, silent = true })
keymap('v', 'K', ':m \'>-2<CR>gv=gv',  { noremap = true, silent = true })
keymap('i', '<C-j>', ':m .+1<CR>==',  { noremap = true, silent = true })
keymap('i', '<C-k>', ':m .-2<CR>==',  { noremap = true, silent = true })
keymap('n', '<leader>j', ':m .+1<CR>==',  { noremap = true, silent = true })
keymap('n', '<leader>k', ':m .-2<CR>==',  { noremap = true, silent = true })
-- COMPLETION
-- use tab to trigger completion
keymap('i', '<TAB>', '<Plug>(completion_smart_tab)',  { noremap = false, silent = true })
keymap('i', '<S-TAB>', '<Plug>(completion_smart_s_tab)',  { noremap = false, silent = true })
-- navigate through completion menu using <C-n> and <C-p>
keymap('i', '<expr> <Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"',  { noremap = true, silent = true })
keymap('i', '<expr> <S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"',  { noremap = true, silent = true })
-- FORMATTING
keymap('n', '<space>ft', '<cmd>:Neoformat<CR>',  { noremap = true, silent = true })
-- GIT
-- Fugitive git bindings
keymap('n', '<leader>ga', ':Git add %:p<CR><CR>', { noremap = true, silent = true })
keymap('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gc', ':Git commit -v -q<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gt', ':Git commit -v -q %:p<CR>', { noremap = true, silent = true })
keymap('n', '<leader>d', ':Gdiff<CR>', { noremap = true, silent = true })
keymap('n', '<leader>ge', ':Gedit<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gr', ':Gread<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gw', ':Gwrite<CR><CR>', { noremap = true, silent = true })

-- Keymaps
local keymap = vim.api.nvim_set_keymap
-- GENERAL
keymap('n', '<LEFT>', ':echo "Use h"<CR>', { noremap = true, silent = true })
keymap('n', '<S-LEFT>', ':echo "Use h"<CR>', { noremap = true, silent = true })
keymap('n', '<RIGHT>', ':echo "Use l"<CR>', { noremap = true, silent = true })
keymap('n', '<S-RIGHT>', ':echo "Use l"<CR>', { noremap = true, silent = true })
keymap('n', '<UP>', ':echo "Use k"<CR>', { noremap = true, silent = true })
keymap('i', '<S-UP>', '', { noremap = true, silent = true })
keymap('n', '<DOWN>', ':echo "Use j"<CR>', { noremap = true, silent = true })
keymap('i', '<S-DOWN>', '', { noremap = true, silent = true })
-- Quickscope exit and write
keymap('n', '<ESC>', ':q<CR>', { noremap = true, silent = true })
keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
-- Paste over selection
keymap('v', '<leader>p', '"_dP', { noremap = true, silent = true })
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
keymap('n', '<leader>gl', ':silent! Glog<CR>:bot copen<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gp', ':Ggrep<space>', { noremap = true, silent = true })
keymap('n', '<leader>gm', ':Gmove<space>', { noremap = true, silent = true })
keymap('n', '<leader>gb', ':Git branch<Space>', { noremap = true, silent = true })
keymap('n', '<leader>go', ':Git checkout<Space>', { noremap = true, silent = true })
keymap('n', '<leader>gps', ':Git push<CR>', { noremap = true, silent = true })
keymap('n', '<leader>gpl', ':Dispatch! git pull<CR>', { noremap = true, silent = true })
-- Interactive merge conflict SPAVE-mv to trigger from git status menu
keymap('n', '<leader>gj', ':diffget //3<Space>', { noremap = true, silent = true })
keymap('n', '<leader>gf', ':diffget //2<Space>', { noremap = true, silent = true })
-- TELESCOPE
keymap('n', '<leader>rg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>pw', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>pf', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>pg', '<cmd>lua require(\'telescope.builtin\').git_files()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>pb', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>m', '<cmd>lua require(\'telescope.builtin\').man_pages()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>pc', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>tg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', { noremap = true, silent = true })
-- kenesis
keymap('n', '<leader>th', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>tj', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>tk', '<cmd>lua require(\'telescope.builtin\').git_files()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>tm', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>t;', '<cmd>lua require(\'telescope.builtin\').help_tags()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>tl', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', { noremap = true, silent = true })
-- NVIM lsp
local opts = { noremap=true, silent=true }
-- See `:help vim.lsp.*` for documentation on any of the below functions
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)


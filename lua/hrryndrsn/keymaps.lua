-- Keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- GENERAL
keymap('n', '<LEFT>', ':echo "Use h"<CR>', opts)
keymap('n', '<S-LEFT>', ':echo "Use h"<CR>', opts)
keymap('n', '<RIGHT>', ':echo "Use l"<CR>', opts)
keymap('n', '<S-RIGHT>', ':echo "Use l"<CR>', opts)
keymap('n', '<UP>', ':echo "Use k"<CR>', opts)
keymap('i', '<S-UP>', '', opts)
keymap('n', '<DOWN>', ':echo "Use j"<CR>', opts)
keymap('i', '<S-DOWN>', '', opts)
-- Quickscope exit and write
keymap('n', '<ESC>', ':q<CR>', opts)
keymap('n', '<leader>w', ':w<CR>', opts)
-- Paste over selection
keymap('v', '<leader>p', '"_dP', opts)
-- Y copy from cursor to end of line
keymap('n', 'Y', 'y$', opts)
-- Keep cursor centered when scrolling search matches
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)
keymap('n', 'J', 'mzJ`z', opts)
-- Undo breakpoints
keymap('i', ',', ',<c-g>u', opts)
keymap('i', '.', '.<c-g>u', opts)
keymap('i', '!', '!<c-g>u', opts)
keymap('i', '?', '?<c-g>u', opts)
-- Jumplist mutations
keymap('n', '<expr> k', '(v:count > 5 ? "m\'" . v:count : "") . \'k\'', opts)
keymap('n', '<expr> j', '(v:count > 5 ? "m\'" . v:count : "") . \'j\'', opts)
-- Moving text
keymap('v', 'J', ':m \'>+1<CR>gv=gv',  opts)
keymap('v', 'K', ':m \'>-2<CR>gv=gv',  opts)
-- keymap('i', '<C-j>', ':m .+1<CR>==',  opts)
-- keymap('i', '<C-k>', ':m .-2<CR>==',  opts)
keymap('n', '<leader>j', ':m .+1<CR>==',  opts)
keymap('n', '<leader>k', ':m .-2<CR>==',  opts)
-- COMPLETION
-- use tab to trigger completion
-- keymap('i', '<TAB>', '<Plug>(completion_smart_tab)',  { noremap = false, silent = true })
-- keymap('i', '<S-TAB>', '<Plug>(completion_smart_s_tab)',  { noremap = false, silent = true })
-- navigate through completion menu using <C-n> and <C-p>
keymap('i', '<expr> <Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"',  opts)
keymap('i', '<expr> <S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"',  opts)
-- FORMATTING
keymap('n', '<space>ft', '<cmd>:Neoformat<CR>',  opts)
-- GIT
-- Fugitive git bindings
keymap('n', '<leader>ga', ':Git add %:p<CR><CR>', opts)
keymap('n', '<leader>gs', ':Git<CR>', opts)
keymap('n', '<leader>gc', ':Git commit -v -q<CR>', opts)
keymap('n', '<leader>gt', ':Git commit -v -q %:p<CR>', opts)
-- keymap('n', '<leader>d', ':Gdiff<CR>', opts)
keymap('n', '<leader>d', ':Gdiffsplit!<CR>', opts)
keymap('n', '<leader>ge', ':Gedit<CR>', opts)
keymap('n', '<leader>gr', ':Gread<CR>', opts)
keymap('n', '<leader>gw', ':Gwrite<CR><CR>', opts)
keymap('n', '<leader>gl', ':silent! Glog<CR>:bot copen<CR>', opts)
keymap('n', '<leader>gp', ':Ggrep<space>', opts)
keymap('n', '<leader>gm', ':Gmove<space>', opts)
keymap('n', '<leader>gb', ':Git branch<Space>', opts)
keymap('n', '<leader>go', ':Git checkout<Space>', opts)
keymap('n', '<leader>gps', ':Git push<CR>', opts)
keymap('n', '<leader>gpl', ':Dispatch! git pull<CR>', opts)
-- Interactive merge conflict SPAVE-mv to trigger from git status menu
keymap('n', '<leader>gj', ':diffget //3<Space>', opts)
keymap('n', '<leader>gf', ':diffget //2<Space>', opts)
-- TELESCOPE
keymap('n', '<leader>rg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', opts)
keymap('n', '<leader>pw', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>', opts)
keymap('n', '<leader>pf', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', opts)
keymap('n', '<leader>pg', '<cmd>lua require(\'telescope.builtin\').git_files()<CR>', opts)
keymap('n', '<leader>pb', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', opts)
keymap('n', '<leader>m', '<cmd>lua require(\'telescope.builtin\').man_pages()<CR>', opts)
keymap('n', '<leader>pc', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', opts)
keymap('n', '<leader>tg', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', opts)
keymap('n', '<leader>gl', '<cmd>lua require(\'telescope.builtin\').git_bcommits()<CR>', opts)
keymap('n', '<leader>gk', '<cmd>lua require(\'telescope.builtin\').git_commits()<CR>', opts)
-- kenesis
keymap('n', '<leader>th', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>', opts)
keymap('n', '<leader>tj', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', opts)
keymap('n', '<leader>tk', '<cmd>lua require(\'telescope.builtin\').git_files()<CR>', opts)
keymap('n', '<leader>tm', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', opts)
keymap('n', '<leader>t;', '<cmd>lua require(\'telescope.builtin\').help_tags()<CR>', opts)
keymap('n', '<leader>tl', '<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', opts)
-- NVIM lsp
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
-- Harpoon
keymap('n', '<space>ha', '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)
keymap('n', '<space>hj', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
keymap('n', '<space>hn', '<cmd>lua require("harpoon.ui").nav_next()<CR>', opts)
keymap('n', '<space>hp', '<cmd>lua require("harpoon.ui").nav_prev()<CR>', opts)
keymap('n', '<space>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap('n', '<space>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap('n', '<space>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap('n', '<space>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)


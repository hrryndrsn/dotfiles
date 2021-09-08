-- Settings and options
--
-- Syntax highlighting on
vim.opt.syntax = 'on'
-- Disable the default Vim startup message.
vim.opt.shortmess:append({ I = true })
 -- Line numbers
vim.opt.number = true
-- Relative line numbers to cursor position
vim.opt.relativenumber = true
-- Always show the status line at the bottom, even if you only have one window open.
vim.opt.laststatus = 2
-- The backspace key has slightly unintuitive behavior by default. For example,
-- by default, you can't backspace before the insertion point set with 'i'.
-- This configuration makes backspace behave more reasonably, in that you can
-- backspace over anything.
vim.opt.backspace = { 'indent', 'eol', 'start' }
--  By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
--  shown in any window) that has unsaved changes. This is to prevent you from
--  forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
--  hidden buffers helpful enough to disable this protection. See `:help hidden`
--  for more information on this.
vim.opt.hidden = true
--  This setting makes search case-insensitive when all characters in the string
--  being searched are lowercase. However, the search becomes case-sensitive if
--  it contains any capital letters. This makes searching more convenient.
vim.opt.ignorecase = true
vim.opt.smartcase = true
--  Enable searching as you type, rather than waiting till you press enter.
vim.opt.incsearch = true
--  Unbind some useless/annoying default key bindings.
-- 'Q' in normal mode enters Ex mode. You almost never want this.
vim.api.nvim_set_keymap('n', 'Q', '<Nop>', { noremap = true, silent = true })
-- Enable mouse support. You should avoid relying on this too much, but it can
-- sometimes be convenient.
vim.opt.mouse:append({ a = true })
-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- Do smart autoindenting when starting a new line.
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
-- Always block cursor
vim.opt.guicursor = ''
-- Disable highlighted search matches
vim.opt.hlsearch = false
-- Disable swapfiles
vim.opt.swapfile = false
-- undo settings
vim.opt.undodir = vim.fn.expand('$HOME') .. '/nvim/undo'
vim.opt.undofile = true
-- Enables 24-bit RGB color
vim.opt.termguicolors = true
-- Scroll settings
vim.opt.scrolloff = 8
-- Turn off -- INSERT -- message
vim.opt.showmode = false
-- Completion behavior
vim.opt.completeopt = { 'menuone' ,'noinsert', 'noselect' }
vim.g.completion_matching_strategy_list = {"exact", "substring", "fuzzy"}
-- Add column for hints to prevent gitter
vim.opt.signcolumn = 'yes'
-- Highlight current line of cursor
vim.opt.cursorline = true
-- Clipboard settings
-- ALWAYS use the clipboard for ALL operations (instead of interacting with
--the '+' and/or '*' registers explicitly)
--vim.opt.clipboard = 'unnamedplus'
-- Wrappring settings
vim.opt.wrap = false
-- Filetype detection
vim.cmd('filetype plugin indent on')

-- Global variables
-- Leader key
vim.g.mapleader = ' '
-- Rust format on save
vim.g.rustfmt_autosave = 1
-- Lightline theme
vim.g.lightline = { colorscheme = 'powerline' }
-- Emmet
vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_settings = {
    typescript = {
        extends = 'jsx',
    },
    typescriptreact = {
        extends = 'jsx',
    }
}

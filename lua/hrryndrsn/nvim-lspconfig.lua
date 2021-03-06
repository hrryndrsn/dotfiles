-- DEBUG
-- vim.lsp.set_log_level("debug")

local nvim_lsp = require('lspconfig')
-- cmp
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- GENERAL CONFIG
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'tsserver', 'tailwindcss', 'hls', 'bashls', 'terraformls', 'solc', 'gopls', 'dockerls', 'cssls', 'jsonls'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end


-- TYPESCRIPT EXTENSIONS
-- ESLint through null-ls
-- https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils
-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- require("null-ls").setup({
--     -- you must define at least one source for the plugin to work
--       sources = {
--         require("null-ls").builtins.formatting.stylua,
--         require("null-ls").builtins.diagnostics.eslint,
--         -- require("null-ls").builtins.completion.spell,
--     },
--     capabilities = capabilities,
--     on_attach = on_attach
-- })

-- LUA
-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("mac") == 1 then
    sumneko_root_path = "/Users/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/Users/" .. USER .. "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
else
    print("Unsupported system for sumneko")
end

require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

-- YAML
nvim_lsp.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
    settings = {
            yaml = {
              trace = {
                server = "verbose"
              },
              -- schemaStore = {
              --     url = "https://www.schemastore.org/api/json/catalog.json",
              --     enable = true,
              --   },
            schemas = {
                -- cloudformation
               -- ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = "/*",
               -- ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/sam.schema.json"] = "/*",
               -- kubernetes
               -- ["https://kubernetesjsonschema.dev/v1.14.0/deployment-apps-v1.json"] = "/*",
               -- ["https://kubernetesjsonschema.dev/v1.10.3-standalone/service-v1.json"] = "/*",
               -- eks
               -- ["https://raw.githubusercontent.com/weaveworks/eksctl/main/pkg/apis/eksctl.io/v1alpha5/assets/schema.json"] = "/*",
               -- ["file:/home/harry/schema/eks-schema.json"] = "/*.yaml",
               --
               -- ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
            },
            schemaDownload = {  enable = true },
            validate = true,
            customTags = {
                -- AWS cloudformation tags
                -- https://github.com/redhat-developer/yaml-language-server/issues/77
                "!And scalar",
                "!And mapping",
                "!And sequence",
                "!If scalar",
                "!If mapping",
                "!If sequence",
                "!Not scalar",
                "!Not mapping",
                "!Not sequence",
                "!Equals scalar",
                "!Equals mapping",
                "!Equals sequence",
                "!Or scalar",
                "!Or mapping",
                "!Or sequence",
                "!FindInMap scalar",
                "!FindInMap mappping",
                "!FindInMap sequence",
                "!Base64 scalar",
                "!Base64 mapping",
                "!Base64 sequence",
                "!Cidr scalar",
                "!Cidr mapping",
                "!Cidr sequence",
                "!Ref scalar",
                "!Ref mapping",
                "!Ref sequence",
                "!Sub scalar",
                "!Sub mapping",
                "!Sub sequence",
                "!GetAtt scalar",
                "!GetAtt mapping",
                "!GetAtt sequence",
                "!GetAZs scalar",
                "!GetAZs mapping",
                "!GetAZs sequence",
                "!ImportValue scalar",
                "!ImportValue mapping",
                "!ImportValue sequence",
                "!Select scalar",
                "!Select mapping",
                "!Select sequence",
                "!Split scalar",
                "!Split mapping",
                "!Split sequence",
                "!Join scalar",
                "!Join mapping",
                "!Join sequence"
            }
        }
    }
}

-- -- Enable diagnostics
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     virtual_text = true,
--     signs = true,
--     update_in_insert = true,
--   }
-- )

-- Autocommands
-- Set updatetime for CursorHold
-- 300ms of no cursor movement to trigger CursorHold
vim.g.updatetime = 300
-- Show diagnostic popup on cursor hover
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float()]]
-- Enable rust type inlay hints
-- terrformls
vim.cmd [[autocmd BufWritePre *.tf lua vim.lsp.buf.formatting()]]
vim.cmd [[autocmd BufNewFile,BufRead *.sol setfiletype solidity]]

-- Rust
-- Simple
-- nvim_lsp.rust_analyzer.setup{}
nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  -- settings = {
  --   ["rust-analyzer"] = {
  --     checkOnSave = {
  --         command = "clippy"
  --     },
  --   }
  -- }
}

-- Advanced
-- require('rust-tools').setup({
--     tools = {
--         autoSetHints = false,
--     },
--     server = {
--         -- on_attach is a callback called when the language server attachs to the buffer
--         -- on_attach = on_attach,
--         settings = {
--             -- to enable rust-analyzer settings visit:
--             -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
--             ["rust-analyzer"] = {
--                 -- enable clippy on save
--                 checkOnSave = {
--                     command = "clippy"
--                 },
--             }
--         }
--     },
-- })
--
--
-- ZIG
nvim_lsp.zls.setup({})

--  --
-- Setup Completion
-- See https://github.com/hrsh7th/nvim-cmp#basic-configuration
-- Completion behavior
vim.opt.completeopt = { 'menuone' ,'noinsert', 'noselect' }
vim.g.completion_matching_strategy_list = {"exact", "substring", "fuzzy"}
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local luasnip = require("luasnip")
local cmp = require'cmp'

cmp.setup({
  snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
  },
  mapping = cmp.mapping.preset.insert({
     ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
  }),

  -- Installed sources
  sources = cmp.config.sources({
    { name = 'nvim_lsp', keyword_length = 2 },
     { name = 'luasnip', options = { use_show_condition = false } },
    { name = 'path', keyword_length = 2 },
    { name = 'buffer', keyword_length = 2 },
  }),
})


-- Comments
require('Comment').setup()


--Luasnip
local ls = require("luasnip")
local t = ls.text_node
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

        
-- args is a table, where 1 is the text in Placeholder 1, 2 the text in
-- placeholder 2,...
local function copy(args)
	return args[1]
end


ls.add_snippets("all", {
    -- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
    s(
    "p1",
    fmt('println!("{} {{}}", {})', {
        i(1),
        i(2)
    })
	),
    s( "p2", {
    -- Simple static text.
		t('println!("{} {}", '), i(1), t(", ") ,i(2), t(");")
    }
    ),
})

require("luasnip.loaders.from_vscode").lazy_load()


-- Deno
--To approrpiately highlight codefences returned from denols,
--you will need to augment vim.g.markdown_fenced languages in your init.lua.
vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

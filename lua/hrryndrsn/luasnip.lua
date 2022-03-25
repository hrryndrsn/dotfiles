
local keymap = vim.api.nvim_set_keymap
if vim.g.snippets ~= "luasnip" then
    return
end

local ls = require "luasnip"
local types = require "luasnip.util.types"
local s = ls.s
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
require("luasnip.loaders.from_vscode").lazy_load()

-- suggested defaults
ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    -- ext_opts = nil,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "<-", "Error" } },
            },
        },
    },
}
--
-- keymap for expanding and jumping
vim.keymap.set({ "i", "s"}, "<c-j>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent = true })

-- keymap for expanding and jumping
vim.keymap.set({ "i", "s" }, "<c-J>", function ()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true })

-- keymap for expanding and jumping
vim.keymap.set({ "i", "s" }, "<c-l>", function ()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)


-- keymap for reloading config
vim.keymap.set("n", "<leader>hh", "<cmd>luafile %<CR>")


ls.add_snippets("all", {
    ls.parser.parse_snippet("expand", "-- this is what was expanded"),
    s("ternary", {
        -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
        i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
    })
})














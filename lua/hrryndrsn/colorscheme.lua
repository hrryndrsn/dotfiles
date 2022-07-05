-- --Colorscheme
--
-- require('colorbuddy').colorscheme('hrryndrsn.zord')


-- Lua
-- require('colorbuddy').colorscheme('hrryndrsn.nordic')

-- vim.g.gruvbox_contrast_dark = "hard"
-- vim.cmd [[colorscheme base16-tomorrow-night]]
--
-- vim.cmd [[call Base16hi("macro", g:base16_gui04, "", g:base16_cterm09, "", "", "")]]
--
-- vim.cmd [[call Base16hi("Type", g:base16_gui05, "", g:base16_cterm05, "", "", "")]]
-- vim.cmd [[call Base16hi("Identifier", g:base16_gui05, "", g:base16_cterm05, "", "", "")]]
-- vim.cmd [[call Base16hi("Function", g:base16_gui04, "", g:base16_cterm05, "", "", "")]]
--
-- vim.cmd [[colorscheme forestbones]]
-- vim.g.forestbones = { solid_line_nr = true, darken_comments = 70 }

-- vim.cmd [[colorscheme neobones]]
-- vim.g.duckbones = { solid_line_nr = true, darken_comments = 45 }
-- --
-- vim.cmd [[colorscheme rosebones]]
-- vim.g.neobones = { solid_line_nr = true, darken_comments = 45 }
--
-- vim.cmd [[colorscheme apprentice]]
-- vim.g.neobones = { solid_line_nr = true, darken_comments = 45 }
--
-- vim.cmd [[colorscheme lake]]
-- vim.cmd [[colorscheme tender]]
--
-- require("github-theme").setup({
--   theme_style = "dark",
-- })
--
-- github theme
-- https://github.com/projekt0n/github-nvim-theme
require("github-theme").setup({
  theme_style = "dark_colorblind",
  colors = { syntax = { variable = "#c9d1d9"} },

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      StatusLine = {link = "Comment"},
      TSSymbol = {link = "Normal"},
      Search = {link = "TSNote"},
      -- this will remove the highlight groups
      -- TSField = {},
    }
  end
})


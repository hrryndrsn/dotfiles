-- Telescope config
-- mostly defaults pulled from the docs
local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    sorting_strategy = "ascending",
    -- winblend = 30,
    layout_config = {
        horizontal = {
            prompt_position = "top",
            width = 0.95,
            height = 0.95
        }
    },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-y>"] = actions.select_default,
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('dap')

local status, lualine = pcall(require, "lualine")
if not status then
   return
end

local git_blame = require('gitblame')
-- This disables showing of the blame text next to the cursor
vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_date_format = "%r"

lualine.setup({
    options = {
        theme = 'onedark'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {{'filename', path = 1}},
        lualine_c = {}
    },
    tabline = {
        lualine_a = {'branch'},
        lualine_b = {'diff'},
        lualine_c = {{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }},
        lualine_z = {'buffers'}
    }
})

local nav = require('nvim-tmux-navigation')

vim.keymap.set('n', "<Left>", nav.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<Down>", nav.NvimTmuxNavigateDown)
vim.keymap.set('n', "<Up>", nav.NvimTmuxNavigateUp)
vim.keymap.set('n', "<Right>", nav.NvimTmuxNavigateRight)

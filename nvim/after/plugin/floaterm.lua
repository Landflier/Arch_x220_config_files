-- local floaterm = require("vim-floaterm")

-- floaterm size
vim.g.floaterm_height = 0.9
vim.g.floaterm_width = 0.9

-- position on screen
vim.g.floaterm_titleposition = 'center'

-- floaterm keymappings
vim.keymap.set({'n', 'c'} , '<Leader>gt', '<cmd>FloatermNew lazygit<CR>' , { silent = true })

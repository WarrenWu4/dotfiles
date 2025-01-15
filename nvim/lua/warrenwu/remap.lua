-- all of my remaps

-- setting leader key to space
vim.g.mapleader = " "

-- setting :Ex command to <leader>pv in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })


-- all of my remaps

-- setting leader key to space
vim.g.mapleader = " "

-- setting :Ex command to <leader>pv in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope git files' })


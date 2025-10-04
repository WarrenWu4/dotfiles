local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- vim settings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- fat cursor
vim.opt.guicursor = ""
-- hybrid line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
-- tab spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- coloring
vim.opt.termguicolors = true
-- more spacing settings
vim.opt.scrolloff = 8
-- copy and paste setting
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

require("lazy").setup({
  spec = {
	  -- import your plugins
	  { import = "plugins" },
  },
})


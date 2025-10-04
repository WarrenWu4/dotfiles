local M = {}

function M.toggle_tab_width()
  local current = vim.o.tabstop
  if current == 2 then
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.softtabstop = 4
    vim.notify("Switched to 4-space tabs", vim.log.levels.INFO)
  else
    vim.o.tabstop = 2
    vim.o.shiftwidth = 2
    vim.o.softtabstop = 2
    vim.notify("Switched to 2-space tabs", vim.log.levels.INFO)
  end
end

-- Create a command
vim.api.nvim_create_user_command("ToggleTabs", function()
  M.toggle_tab_width()
end, {})

return M


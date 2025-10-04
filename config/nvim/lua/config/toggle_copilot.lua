local M = {}

function M.toggle_copilot()
    if require("copilot.client").is_disabled() then
        require("copilot.command").enable()
    else
        require("copilot.command").disable()
    end
end

-- Create a command
vim.api.nvim_create_user_command("ToggleCopilot", function()
  M.toggle_copilot()
end, {})

return M


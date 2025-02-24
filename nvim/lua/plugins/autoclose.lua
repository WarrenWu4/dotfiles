local config = {
   keys = {
      ["<"] = { escape = true, close = false, pair = "<>" },
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
   options = {
      disabled_filetypes = { "text" },
      disable_when_touch = false,
      touch_regex = "[%w(%[{]",
      pair_spaces = false,
      auto_indent = true,
      disable_command_mode = false,
   },
}
return {
    {
        "m4xshen/autoclose.nvim", -- auto close specific chars like ([{"'``'"}])
        config = function()
            require("autoclose").setup(config)
        end
    },
    {
        "windwp/nvim-ts-autotag", -- automatically close html and jsx tags
    }
}

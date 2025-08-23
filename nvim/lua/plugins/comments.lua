return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                INFO = {icon = "∩ä⌐", color = "info", alt = { "info", "Info" } },
                TODO = { icon = "∩ÆÉ ", color = "warning" },
                FIX = { icon = "∩åê ", color = "error", alt = { "FIXME", "BUG", "ISSUE" } },
            },
            highlight = {
                before = "",
                keyword = "fg",
                after = "fg",
            }
        },
    },
    {
        "echasnovski/mini.comment",
        version = false, -- always use latest
        config = function()
            require("mini.comment").setup({
                -- Optional: customize mappings
                mappings = {
                    comment = "gc",  -- toggle comment for motion/textobject
                    comment_line = "gcc", -- toggle comment for line
                    textobject = "gc", -- comment textobject (works with motions like `gcip`)
                },
            })
        end,
    }
}


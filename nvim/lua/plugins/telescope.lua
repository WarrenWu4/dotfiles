return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- disable the keymap to grep files
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files" },
        },
    }
}

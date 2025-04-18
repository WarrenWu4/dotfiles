return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        lazy = vim.fn.argc(-1) == 0,
        init = function(plugin)
            -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
            -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
            -- no longer trigger the **nvim-treesitter** module to be loaded in time.
            -- Luckily, the only things that those plugins need are the custom queries, which we make available
            -- during startup.
            require("lazy.core.loader").add_to_rtp(plugin)
            require("nvim-treesitter.query_predicates")
        end,
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
        opts_extend = { "ensure_installed" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_enstalled = {"c", "cpp", "java", "python", "javascript", "typescript", "css", "html", "jsx", "tsx", "json", "lua", "vim", "vimdoc", "query" },
        },
        config = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                opts.ensure_installed = LazyVim.dedup(opts.ensure_installed)
            end
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}

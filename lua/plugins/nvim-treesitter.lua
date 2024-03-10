return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpadate",
    config = function()
        local treesitter_config = require("nvim-treesitter.configs")

        treesitter_config.setup({
            ensure_install = { "c", "cpp", "html", "css", "scss", "javascript", "typescript", "rust", "lua" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })

    end,
}

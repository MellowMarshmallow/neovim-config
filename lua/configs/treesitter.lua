local tsconfig = require("nvim-treesitter.configs")

tsconfig.setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    ensure_installed = {
        -- shell
        "bash", "fish",

        -- languages
        "c", "cpp",
        "lua",
        "python",
        "rust",

        -- web stuff
        "html", "css", "javascript", "typescript", "tsx",

        -- data formats
        "json", "yaml", "toml",

        -- misc
        "comment",
        "latex",
    },
})

-- folding
vim.opt.foldmethod = "expr"
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")


local languages = {
    "lua", "python",
}

-- basic treesitter config
require("nvim-treesitter.configs").setup({
    ensure_installed = languages,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})

-- folding (experimental)
vim.opt.foldmethod = "expr"
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")


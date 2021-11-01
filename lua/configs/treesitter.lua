-- local ok, treesitter_config = pcall(require, "nvim-treesitter.configs")
-- if not ok then
--     return
-- end
-- treesitter_config.setup({
require("nvim-treesitter.configs").setup({
    ensure_installed = "maintained",
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
	additional_vim_regex_highlighting = false,
    },
})


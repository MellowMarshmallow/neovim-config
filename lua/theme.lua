local function github()
    require("github-theme").setup({
        theme_style = "dark",
    })
end

local function tokyonight()
    vim.g.tokyonight_style = "storm" -- storm, night, day
    vim.cmd("colorscheme tokyonight")
end

tokyonight()


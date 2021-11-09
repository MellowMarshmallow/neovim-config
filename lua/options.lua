local opt = vim.opt
local g = vim.g

local options = {
    -- color
    termguicolors = true,
    cursorline = true,

    -- line number
    number = true,
    relativenumber = true,

    -- indentation
    expandtab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,

    smarttab = true,
    autoindent = true,
    smartindent = true,

    -- seartching
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,

    -- split
    splitbelow = true,
    splitright = true,

    -- misc
    mouse = "a",
    scrolloff = 1000,
}

for option, value in pairs(options) do
    opt[option] = value
end


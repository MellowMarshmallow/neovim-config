local options = {
    -- number
    number = true,
    relativenumber = true,
    numberwidth = 1,
    wrap = false,

    -- color
    termguicolors = true,
    guifont = "Consolas NF",
    cursorline = true,

    -- copy-paste behavior
    clipboard = 'unnamedplus',

    -- enable mouse
    mouse = "a",

    -- disable shada
    shadafile = "NONE",

    -- buffer
    hidden = true,

    -- indentation
    tabstop = 4,
    shiftwidth = 4,
    smartindent = true,
    expandtab = true,
    smarttab = true,
    backspace = "indent,eol,start",

    -- searching
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,

    -- split
    splitbelow = true,
    splitright = true,

    -- window
    completeopt = "menuone,noselect",
    pumheight = 10,
    timeoutlen = 500,
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

-- disable built in plugins
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

vim.g.mapleader = " "


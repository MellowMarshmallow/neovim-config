local options = {
    number = true,
    relativenumber = true,
    numberwidth = 2,

    termguicolors = true,
    guifont = "Consolas NF",

    clipboard = 'unnamedplus',

    mouse = 'a',

    cursorline = true,

    hidden = true,

    tabstop = 4,
    shiftwidth = 4,
    smartindent = true,
    expandtab = true,
    smarttab = true,

    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,

    backspace = "indent,eol,start",

    splitbelow = true,
    splitright = true,

    completeopt = "menuone,noselect",
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


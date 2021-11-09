local modules = {
    "options",
    "plugins",
    "theme",
}

for _, module in pairs(modules) do
    require(module)
end

local files = {
    "commands.vim",
}

for _, file in pairs(files) do
    vim.cmd("source ~/.config/nvim/viml/" .. file)
end


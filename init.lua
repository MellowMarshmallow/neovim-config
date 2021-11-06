local modules = {
    "utils",
    "options",
    "plugins",
    "mappings",
    "theme",
}

for _, module in ipairs(modules) do
    local status, err = pcall(require, module)
    if not status then
        error("Error loading " .. module .. "\n" .. err)
    end
end


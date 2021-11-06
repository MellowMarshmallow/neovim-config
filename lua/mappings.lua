local nest = require("nest")
local wk = require("which-key")

local escapes = {
    { mode = "i", { "jk", "<Esc>" } },
    { mode = "t", { "jk", "<C-\\><C-N>" } },
}

local packer = {
    name = "packer",
    prefix = "<leader>p",
    { "i", "<cmd>PackerInstall<cr>" },
    { "S", "<cmd>PackerSource<cr>" },
    { "s", "<cmd>PackerSync<cr>" },
    { "u", "<cmd>PackerUpdate<cr>" },
    { "c", "<cmd>PackerCompile<cr>" },
    { "p", "<cmd>PackerProfile<cr>" },
    { "t", "<cmd>PackerStatus<cr>" },
    { "d", "<cmd>PackerClean<cr>" },
    { "o", "<cmd>PackerConfig<cr>" },
}

local maps = { escapes, packer }

-- Add name to which-key and apply mapping using nest
for _, map in pairs(maps) do
    if map.name or map.prefix then
        wk.register({
            [map.prefix] = {
                name = map.name,
            },
        })
    end

    nest.applyKeymaps(map)
end


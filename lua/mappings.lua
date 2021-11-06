local nest = require("nest")
local wk = require("which-key")

-- register groups name via which-key and apply via nest
local register_groups = function(maps)
    for _, map in pairs(maps) do
        if map.name or map.prefix then
            wk.register({ [map.prefix] = { name = map.name } })
        end

        nest.applyKeymaps(map)
    end
end

local escapes = {
    { mode = "i", { "jk", "<Esc>" } },
    { mode = "t", { "jk", "<C-\\><C-N>" } },
}

local packer = {
    name = "Packer",
    prefix = "<leader>p",
    { "i", "<cmd>PackerInstall<cr>" },
    { "s", "<cmd>PackerSync<cr>"    },
    { "u", "<cmd>PackerUpdate<cr>"  },
    { "c", "<cmd>PackerCompile<cr>" },
    { "p", "<cmd>PackerProfile<cr>" },
    { "t", "<cmd>PackerStatus<cr>"  },
    { "d", "<cmd>PackerClean<cr>"   },
}

local lsp = {
    name = "LSP",
    prefix = "<leader>l",
    { "i", "<cmd>LspInstallInfo<cr>"         }, -- install
    { "r", "<cmd>LspRestart<cr>"             }, -- restart
    { "s", "<cmd>LspInfo<cr>"                }, -- info
    { "o", "<cmd>Lspsaga open_floaterm<cr>"  },
    { "c", "<cmd>Lspsaga close_floaterm<cr>" },
}

local telescope = {
    name = "Telescope",
    prefix = "<leader>t",
    { "t", "<cmd>Telescope<cr>"           },
    { "b", "<cmd>Telescope buffers<cr>"   },
    { "g", "<cmd>Telescope live_grep<cr>" },
}

register_groups({
    escapes,
    packer,
    lsp,
    telescope,
})


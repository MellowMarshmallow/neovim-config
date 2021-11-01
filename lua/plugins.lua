local packer = require("configs.packer")

packer.startup(function(use)
    -- self management
    use { "wbthomason/packer.nvim" }

    -- color
    use {
        "nvim-treesitter/nvim-treesitter",
        config = function() require("configs.treesitter") end,
    }

    use {
        "projekt0n/github-nvim-theme",
        config = function() require("configs.theme") end,
    }

    -- completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
            { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
            { "hrsh7th/cmp-path", after = "nvim-cmp" },
        },
        config = function() require("configs.cmp") end,
    }

    -- lsp
    use { "neovim/nvim-lspconfig" }

    use {
        "williamboman/nvim-lsp-installer",
        requires = { "neovim/nvim-lspconfig" },
        config = function() require("configs.lsp") end,
    }
end)


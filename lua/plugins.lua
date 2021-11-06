local packer = require("configs.packer")

packer.startup(function(use)
    -- self management
    use { "wbthomason/packer.nvim" }

    -- color
    use {
        "nvim-treesitter/nvim-treesitter",
        config = function() require("configs.treesitter") end,
    }

    use { "projekt0n/github-nvim-theme" }

    use { "folke/tokyonight.nvim" }

    -- file explorer
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            { "kyazdani42/nvim-web-devicons" },
        },
        config = function() require("nvim-tree").setup({}) end,
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

    use {
        "glepnir/lspsaga.nvim",
        requires = { "neovim/nvim-lspconfig" },
        config = function()
            require("lspsaga").init_lsp_saga({
                finder_action_keys = {
                    open = "i", quit = "q",
                    split = "s", vsplit = "v",
                    scroll_up = "<C-f>", scroll_down = "<C-b>"
                },
            })
        end,
    }

    -- mapping
    use {
        "LionC/nest.nvim"
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup({})
        end,
    }

    -- fuzzy
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({})
        end,
    }
end)


require("config.packer").startup {
    function(use)
        -- self management
        use "wbthomason/packer.nvim"

        -- color
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function()
                require "config.treesitter"
            end,
        }

        use "sainnhe/everforest"

        -- completion
        use {
            "hrsh7th/nvim-cmp",
            requires = {
                { "L3MON4D3/LuaSnip", requires = "saadparwaiz1/cmp_luasnip" },

                -- source for neovim builtin LSP client
                "hrsh7th/cmp-nvim-lsp",

                -- source for neovim Lua API
                "hrsh7th/cmp-nvim-lua",

                -- source for buffer words
                "hrsh7th/cmp-buffer",

                -- source for
                "hrsh7th/cmp-path",

            },
            config = function()
                require "config.cmp"
            end,
        }

        use "onsails/lspkind-nvim"

        -- lsp
        use "neovim/nvim-lspconfig"

        use {
            "williamboman/nvim-lsp-installer",
            requires = "neovim/nvim-lspconfig",
            config = function()
                require "config.lsp"
            end,
        }
    end,

    config = {
        -- use a floating window
        display = {
            open_fn = function()
                return require("packer.util").float {
                    -- none, single, double, rounded, solid, shadow
                    border = "single"
                }
            end,
        },
        -- profile packer
        profile = {
            enable = true,
        },
    }
}


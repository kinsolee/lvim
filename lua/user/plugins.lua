-- https://github.com/ChristianChiarulli/lvim/blob/HEAD/lua/user/plugins.lua
lvim.plugins = {
    {
        "andymass/vim-matchup",
        event = "CursorMoved",
        config = function()
            vim.g.matchup_matchparen_offscreen = {method = "popup"}
        end
    }, {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", {silent = true})
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", {silent = true})
        end
    }, {"p00f/nvim-ts-rainbow"}, {"christoomey/vim-tmux-navigator"},
    {"windwp/nvim-ts-autotag"},
    {"leoluz/nvim-dap-go", config = function() require('dap-go').setup() end},
    {"folke/lsp-colors.nvim", event = "BufRead"}, {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function() require"lsp_signature".setup() end
    }, {"simrat39/symbols-outline.nvim", cmd = "SymbolsOutline"},
    {"tpope/vim-surround", keys = {"c", "d", "y"}},
    {"npxbr/glow.nvim", ft = {"markdown"}}, {"ThePrimeagen/harpoon"}, {
        "ahmedkhalf/lsp-rooter.nvim",
        event = "BufRead",
        config = function() require("lsp-rooter").setup() end
    }, {
        "ethanholz/nvim-lastplace",
        event = "BufRead",
        config = function()
            require("nvim-lastplace").setup({
                lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                lastplace_ignore_filetype = {
                    "gitcommit", "gitrebase", "svn", "hgcommit"
                },
                lastplace_open_folds = true
            })
        end
    }, {
        "nvim-telescope/telescope-project.nvim",
        event = "BufWinEnter",
        setup = function() vim.cmd [[packadd telescope.nvim]] end
    }
}

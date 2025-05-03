return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
        { 
            "<leader>ff",
            function() require("fzf-lua").files() end,
            desc = "Open fzf to find file in current dir",
        },
        {
            "<leader>fg",
            function() require("fzf-lua").live_grep() end,
            desc = "Open fzf to find file in current dir",
        },
        {
            "<leader>fc",
            function() require('fzf-lua').files({cwd=vim.fn.stdpath("config")}) end,
            desc = "Open fzf to find file in current dir",
        },
        {
            "<leader><leader>",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "[,] Find existing buffers",
        },
    }
}


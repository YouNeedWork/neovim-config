return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {"cpp","python", "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "zig", "rust", "go", "php" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
--          incremental_selection = {
            --FIXME: fix this keys bindings. not working for now.
--            enable = true,
--            keymaps = {
--                init_selection = "<Space>",  -- Ctrl+Space 开始选择
--                node_incremental = "<S-Space>",  -- Shift+Tab 扩大选择
--                scope_incremental = "<C-s>",   -- Ctrl+s 选择范围扩大
--                node_decremental = "<BS>",     -- 退格键减小选择
--           },
--         }
        })
    end
 }

vim.keymap.set("n", "-", "<cmd>Oil --float<CR>")
vim.keymap.set("n", "\\", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>")
-- Map Ctrl+H to move to the left window
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- Map Ctrl+L to move to the right window
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

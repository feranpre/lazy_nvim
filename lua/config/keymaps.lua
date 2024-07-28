-- maps are automatically loaded on the VeryLazy event
-- Default maps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional maps here
local map = LazyVim.safe_keymap_set

-- Uber yank --
map({ "n", "v" }, "<leader>y", '"+y', { desc = "[y]ank out of nvim" })

-- window resize
map("n", "<C-S-k>", "<cmd>resize +2<CR>", { desc = "resize window [u]p" })
map("n", "<C-S-j>", "<cmd>resize -2<CR>", { desc = "resize window [d]own" })
map("n", "<C-S-h>", "<cmd>vertical resize +2<CR>", { desc = "resize window [l]eft" })
map("n", "<C-S-l>", "<cmd>vertical resize -2<CR>", { desc = "resize window [r]ight" })

map("n", "<leader>wk", "<cmd>resize +2<CR>", { desc = "resize window [u]p <C-S-k>" })
map("n", "<leader>wj", "<cmd>resize -2<CR>", { desc = "resize window [d]own <C-S-j>" })
map("n", "<leader>wh", "<cmd>vertical resize +2<CR>", { desc = "resize window [l]eft <C-S-l>" })
map("n", "<leader>wl", "<cmd>vertical resize -2<CR>", { desc = "resize window [r]ight <C-S-h>" })

-- window rotation

map("n", "<leader>wK", "<C-w>K", { desc = "move window to the top [<C-w>K]" })
map("n", "<leader>wJ", "<C-w>J", { desc = "move window to the bottom [<C-w>J]" })
map("n", "<leader>wL", "<C-w>L", { desc = "move window to the left [<C-w>L]" })
map("n", "<leader>wH", "<C-w>H", { desc = "move window to the right [<C-w>H]" })

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", { desc = "move selection up" })
map("x", "K", ":move '<-2<CR>gv-gv", { desc = "move selection down" })
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Telescope --
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "find [k]eymaps" })

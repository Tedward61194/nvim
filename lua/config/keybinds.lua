local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i", "v" }, "jk", "<ESC>")

map("n", "<Esc>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

map("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
map("n", "n", "nzzzv") -- center after find next
map("n", "N", "Nzzzv")

map("v", "<", "<gv", opts) -- dont deselect after indent change in visual mode
map("v", ">", ">gv", opts)

map("x", "<leader>p", [["_dP]], { desc = "Paste without replacing clipboard content" })
map("v", "p", '"_dp', opts) -- Prevents paste from deleting clipboard in visual mode
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Deletes without copying" })
map("n", "x", '"_x', opts)

--Hightlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

--split management
map("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
map("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
map("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
map("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
map("n", "<leader>wj", "<C-w>j", { desc = "Jump to lower split" })
map("n", "<leader>wk", "<C-w>k", { desc = "Jump to above split" })
map("n", "<leader>wh", "<C-w>h", { desc = "Jump to left split" })
map("n", "<leader>wl", "<C-w>l", { desc = "Jump to right split" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close all other windows" })

vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })

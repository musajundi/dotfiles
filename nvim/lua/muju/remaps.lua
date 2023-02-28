vim.g.mapleader = " "

local map = vim.keymap

-- Exit buffer
map.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line up/down
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

-- makes deleted car not go to copy buffer
map.set("n", "x", '"_x')

-- window splitting
map.set("n", "<leader>sv", "<C-w>v") -- vertical
map.set("n", "<leader>sh", "<C-w>s") -- horizontal
map.set("n", "<leader>se", "<C-w>=") -- make windows equal 
map.set("n", "<leader>sx", ":close<CR>") -- close current split

-- tabs
map.set("n", "<leader>to", ":tabnew<CR>") -- open
map.set("n", "<leader>tx", ":tabclose<CR>") -- close
map.set("n", "<leader>tn", ":tabn<CR>") -- next tab
map.set("n", "<leader>tp", ":tabp<CR>") -- previous tab 


map.set("n", "J", "mzJ`z")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")

-- greatest remap ever
map.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
map.set({"n", "v"}, "<leader>y", [["+y]])
map.set("n", "<leader>Y", [["+Y]])

map.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
map.set("i", "jk", "<Esc>")

map.set("n", "Q", "<nop>")
map.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
map.set("n", "<leader>f", vim.lsp.buf.format)

map.set("n", "<C-k>", "<cmd>cnext<CR>zz")
map.set("n", "<C-j>", "<cmd>cprev<CR>zz")
map.set("n", "<leader>k", "<cmd>lnext<CR>zz")
map.set("n", "<leader>j", "<cmd>lprev<CR>zz")

map.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

map.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
map.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

map.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

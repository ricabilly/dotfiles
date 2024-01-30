local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Resize with arrows
keymap("n", "<C-Up>", "<cmd>resize -2<CR>", opts)
keymap("n", "<C-Down>", "<cmd>resize +2<CR>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

keymap("n", "<leader>e", "<cmd>Lex 30<cr>", opts)

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Navigate buffers
keymap("n", "<S-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<S-h>", "<cmd>bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<cmd>m .+1<CR>==", opts)
keymap("n", "<A-k>", "<cmd>m .-2<CR>==", opts)

-- Remove \r after paste from Windows
keymap("n", "<leader><C-m>", "<cmd>%s/\\r//g<CR>", { desc = "Clear ^M"})

-- Easy copy paste to clipboard
keymap({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

keymap("n", "<leader>p", [["+p]])
keymap("n", "<leader>P", [["+P]])

keymap({"n", "v"}, "<leader>d", [["_d]])

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap("n", "<CR>", "o<ESC>")

keymap("n", "<leader>gf", "yiW:e <C-r>0<CR>", { desc = "Goto file under cursor"})

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Move text up and down
keymap("v", "<A-j>", "<cmd>m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", "<cmd>m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<leader>gf", "y:e <C-r>0<CR>", { desc = "Goto highlighted file"})


-- Visual Block --
keymap("x", "<A-j>", "<cmd>m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", "<cmd>m '<-2<CR>gv=gv", opts)

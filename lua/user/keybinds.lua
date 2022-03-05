local kmap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Who uses ; anyway
kmap("n", ";", ":", {})

-- Save with Ctrl+S
kmap("n", "<C-s>", ":update<CR>", opts)
kmap("i", "<C-s>", "<C-O>:update<CR>", opts)

-- Dehighlight search results
kmap("n", "<leader><Space>", ":noh<CR>", opts)

-- Center searches
kmap("n", "n", "nzzzv", {})
kmap("n", "N", "Nzzzv", {})

-- Mappings to move lines
kmap("n", "<A-j>", ":m .+1<CR>==", opts)
kmap("n", "<A-k>", ":m .-2<CR>==", opts)
kmap("v", "<A-j>", ":m \">+1<CR>gv=gv", opts)
kmap("v", "<A-k>", ":m \"<-2<CR>gv=gv", opts)

-- Navigate split screen
kmap("n", "<C-h>", "<C-w>h", {})
kmap("n", "<C-j>", "<C-w>j", {})
kmap("n", "<C-k>", "<C-w>k", {})
kmap("n", "<C-l>", "<C-w>l", {})

-- goto file in new tab
kmap("n", "<C-f>", "gf", opts)

-- Navigate Tabs
kmap("n", "<Tab>", "gt", {})
kmap("n", "<S-Tab>", "gT", {})
kmap("n", "<leader>t", ":tabnew<CR>", opts)

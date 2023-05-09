vim.g.mapleader = " "

local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>")  -- exit to basic mode
keymap.set("n", "<leader>nh", ":nohl<CR>")  -- clear searching
keymap.set("n", "x", '"_x"')

-- window splittings
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close curent window

-- tabs
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<C-x>", "<Cmd>BufferClose<CR>") -- close tab
keymap.set("n", "<tab>", "<Cmd>BufferNext<CR>") -- next tab
keymap.set("n", "<S-tab>", "<Cmd>BufferPrevious<CR>") -- prev tab

-- plugins keymap
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")   --maximize current tab
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")   -- tree toggle

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
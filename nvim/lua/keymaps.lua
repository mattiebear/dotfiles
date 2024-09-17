local telescope = require("telescope.builtin")

-- File search
vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})

-- File browsing
vim.keymap.set("n", "<leader>n", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>m", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- LSP commands
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Editor commands
vim.keymap.set("n", "<BS>", "ciw")
vim.keymap.set({ "n", "i" }, "<C-l>", ":noh<CR>") -- Clear search highlighting

-- Git control
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>")

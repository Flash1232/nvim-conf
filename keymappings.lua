vim.api.nvim_set_keymap('n', ';', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ";"
vim.api.nvim_set_keymap('i', '<C-d>', '<C-o>', { noremap = true, silent = true })

-- Reload all files in buffers
vim.api.nvim_set_keymap("n", "<leader>r", ":bufdo e!<CR>", { noremap = true })

-- Telescope keymaps
vim.api.nvim_set_keymap("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})

-- Lspsaga keymaps
vim.api.nvim_set_keymap("n", "ca", ":Lspsaga code_action<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "K", ":Lspsaga hover_doc<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-p>", ":Lspsaga diagnostic_jump_prev<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-n>", ":Lspsaga diagnostic_jump_next<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-f>", "<Cmd>lua require'lspsaga.action'.smart_scroll_with_saga(1)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>", "<Cmd>lua require'lspsaga.action'.smart_scroll_with_saga(-1)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-h>", ":Lspsaga signature_help<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", ":Lspsaga lsp_finder<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-r><C-r>", ":Lspsaga rename<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>to', ':Lspsaga open_floaterm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>tc', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', { noremap = true, silent = true })

-- NvimTree keymaps
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- nvim_comment keymaps
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap=true, silent = true})

-- No hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- far keymaps
vim.api.nvim_set_keymap("n", "<Find-Shortcut>", ":Farf<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Find-Shortcut>", ":Farf<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Replace-Shortcut>", ":Farr<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Replace-Shortcut>", ":Farr<CR>", { noremap = true, silent = true })

-- quick-scope config
vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
vim.g.qs_max_chars=150

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Split screen nav
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })

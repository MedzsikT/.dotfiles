-- Function for make mapping easier.
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
map('i', 'jj', '<esc><esc>')

-- Telescope
map('n', '<leader>ff', "<cmd>Telescope find_files<CR>")
map('n', '<leader>ct', "<cmd>Telescope colorscheme enable_preview=true<CR>")

-- Lsp
map('n', '<leader>gd', "<cmd>lua vim.lsp.buf.definition()<CR>")
map('n', '<leader>gi', "<cmd>lua vim.lsp.buf.implementation()<CR>")
map('n', '<leader>gn', "<cmd>lua vim.lsp.buf.declaration()<CR>")
map('n', '<leader>sr', "<cmd>lua vim.lsp.buf.references()<CR>")
map('n', '<leader>rn', "<cmd> Lspsaga rename<CR>")
map('n', '<leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")

-- ToggleTerm
map('n', '<insert>', "<cmd>ToggleTerm<CR>");
map('t', '<insert>', "exit<CR>");

-- NVimTree
map('n', '<leader>nt', "<cmd>NvimTreeOpen<CR>")

-- Copy Text
map('n', 'Y', 'y$')

-- Better (easizer) buffer management
map('n', '<C-h>', "<cmd>vertical resize +5<CR>");
map('n', '<C-j>', "<cmd>resize -5<CR>");
map('n', '<C-k>', "<cmd>resize +5<CR>");
map('n', '<C-l>', "<cmd>vertical resize -5<CR>");

-- Undo helper
map('i', '.', ".<C-g>u")

-- Text moving
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('i', '<C-j>', "<esc>:m .+1<CR>==")
map('i', '<C-k>', "<esc>:m .-2<CR>==") 

vim.cmd [[
set number
set expandtab
set tabstop=2
set shiftwidth=2
]]
vim.api.nvim_set_keymap('n', '<C-c>', '"*y', {noremap=true,silent=true})
vim.api.nvim_set_keymap('v', '<C-c>', '"*y', {noremap=true,silent=true})
vim.keymap.set('n', '<C-S>', ':w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Q>', ':q!<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-E>', ':BufferClose<CR>', {noremap = true})
vim.keymap.set('n', '<C-T>', ':terminal<CR>', {})
vim.keymap.set('n', '<C-D>', ':BufferNext<CR>', {})
vim.keymap.set('n', '<C-W>', ':BufferPrevious<CR>', {})

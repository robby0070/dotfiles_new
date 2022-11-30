vim.g.mapleader = " "

require "plugins"
require "autocompletion"
require "treesitter"
require "_telescope"
require "toggle_term"
require "others"
require "_lualine"
require "_nvim_dap"
require "_rose_pine"
require "_neovide"
require "_harpoon"
require "_leap"
require "_nerdtree"


-- fuck spaces
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false
vim.opt.relativenumber = true

-- i like to see what im searching
vim.opt.mouse = ""
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.cmdheight = 1
vim.opt.updatetime = 50

vim.opt.wrap = false
vim.opt.colorcolumn = "80"

vim.keymap.set('n', '<leader>o', 'o<ESC>')
vim.keymap.set('n', '<leader>O', 'O<ESC>')
vim.keymap.set('n', '<c-s>', ':w<CR>', { silent = true })
vim.keymap.set('i', '<c-s>', '<ESC>:w<CR>a', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>p', '"*p')
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"*P')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"*y')

vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

vim.keymap.set('n', 'S', ':%s/')

vim.keymap.set('n', '<leader><TAB>', '<c-6>')

vim.keymap.set('n', '<leader>R', ':source $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>x', ':!chmod +x %<CR><CR>')

vim.cmd 'autocmd! TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

vim.cmd [[colorscheme dracula]]

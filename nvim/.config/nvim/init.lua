vim.o.clipboard = 'unnamedplus'
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.winborder = 'rounded'
vim.o.wrap = false

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':update<CR> :write<CR>')

vim.pack.add({
    { src = 'https://github.com/rebelot/kanagawa.nvim' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")

vim.cmd.colorscheme('kanagawa')

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'help',
    callback = function()
        vim.o.number = true
    end,
})

vim.api.nvim_set_hl(0, 'YankHL', { fg = '#ffffff', bg = '#4f586b' })
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank({ higroup = 'YankHL' })
    end,
})

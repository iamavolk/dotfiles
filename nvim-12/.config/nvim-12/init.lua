vim.g.mapleader = ' '


------------------------------------------------------
------------------------------------------------------
-- Settings
------------------------------------------------------
------------------------------------------------------
vim.o.clipboard = 'unnamedplus'
vim.o.conceallevel = 0
vim.o.confirm = true
vim.o.cursorline = true
vim.o.foldcolumn = "2"
vim.o.ignorecase = true
vim.o.number = true
vim.o.shiftwidth = 4
vim.o.signcolumn = 'yes'
vim.o.splitbelow = true
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.wrap = false


------------------------------------------------------
------------------------------------------------------
-- Keybindings
------------------------------------------------------
------------------------------------------------------
vim.keymap.set('i', '<C-Backspace>','<C-w>', { desc = '' })
vim.keymap.set('i', '<C-y>', '<C-Left>', { desc = '' })
vim.keymap.set('i', '<C-e>', '<C-Right>', { desc = '' })
vim.keymap.set('i', '<C-i>', '<Tab>', { desc = '[I]ndent (Tab)' })

vim.keymap.set('n', '<C-w><C-u>', vim.cmd.update, { desc = 'Update' })
vim.keymap.set('n', '<C-x><C-s>', vim.cmd.update, { desc = 'Update (emacs-style)' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Moving split windows around
vim.keymap.set('n', '<C-w><S-Left>', '<C-w>H', { desc = 'Move Left' })
vim.keymap.set('n', '<C-w><S-Right>', '<C-w>L', { desc = 'Move Right' })
vim.keymap.set('n', '<C-w><S-Down>', '<C-w>J', { desc = 'Move Down' })
vim.keymap.set('n', '<C-w><S-Up>', '<C-w>K', { desc = 'Move Up' })

vim.keymap.set('n', '<A-l>', 'L', { desc = '' })
vim.keymap.set('n', '<A-h>', 'H', { desc = '' })
vim.keymap.set('n', '<A-m>', 'M', { desc = '' })
vim.keymap.set('n', '<A-g>', 'G', { desc = '' })


------------------------------------------------------
------------------------------------------------------
-- Plugins & Packages
------------------------------------------------------
------------------------------------------------------
vim.cmd('packadd nohlsearch')

vim.pack.add({
    { src = "https://github.com/thesimonho/kanagawa-paper.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
})

-- vim.lsp.enable("lua_ls")

vim.cmd.colorscheme("kanagawa-paper-ink")


------------------------------------------------------
------------------------------------------------------
-- Autocommands
------------------------------------------------------
------------------------------------------------------
vim.api.nvim_set_hl(0, 'YankHL', { fg = '#ffffff', bg = '#4f586b' })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.hl.on_yank({ higroup = 'YankHL' })
    end,
})

-- Bind options
local bind = vim.keymap.set
-- ========================================================================== --
-- ==                             KEYBINDINGS                              == --
-- ========================================================================== --

-- Space as leader key
vim.g.mapleader = ' '

-- Shortcuts
bind({'n', 'x', 'o'}, '<leader>h', '^')
bind({'n', 'x', 'o'}, '<leader>l', 'g_')
bind('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
bind({'n', 'x'}, 'cp', '"+y')
bind({'n', 'x'}, 'cv', '"+p')

-- Delete text
bind({'n', 'x'}, 'x', '"_x')

-- Commands
bind('n', '<leader>w', '<cmd>write<cr>')
bind('n', '<leader>bq', '<cmd>bdelete<cr>')
bind('n', '<leader>bl', '<cmd>buffer #<cr>')

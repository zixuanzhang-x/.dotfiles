-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --

vim.opt.title = true

-- Show relative line number
vim.opt.number = true

-- Ignore the case when the search pattern is all lowercase
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Don't highlight search results
vim.opt.hlsearch = false

-- Disable line wrapping
vim.opt.wrap = true
vim.opt.breakindent = true

-- Keep lines below cursor when scrolling
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5

-- Enable cursorline
vim.opt.cursorline = true

-- Always display signcolumn (for diagnostic related stuff)
vim.opt.signcolumn = 'yes'

-- When opening a window put it right or below the current one
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Tab set to two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Enable mouse support
vim.opt.mouse = 'a'

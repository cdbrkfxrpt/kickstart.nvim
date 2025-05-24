vim.g.have_nerd_font = true

-- Preview substitutions live, as you type! (but not in a split window as well; that'd be 'split')
vim.o.inccommand = 'nosplit'

-- Set highlight on search
vim.o.hlsearch = false

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Set behavior when switching between buffers, ie. when jumping to errors et al.
vim.o.switchbuf = 'split'

-- Set linebreak and stuff
vim.o.linebreak = true
vim.o.textwidth = 100
vim.o.wrap = true
vim.o.colorcolumn = '101'

-- SPACES vs TABS
-- vim.o.expandtab = true
-- vim.o.smarttab = true
-- vim.o.tabstop = 4
-- vim.o.softtabstop = 4
-- vim.o.shiftwidth = 4

-- cursor things
vim.o.fileformats = 'unix,dos,mac'
vim.o.scrolloff = 8
vim.o.virtualedit = 'all,onemore'
vim.o.guicursor = 'a:hor20'

-- Show filename in window title
vim.o.title = true
vim.o.titlestring = "%{hostname()} %F %{strftime('%Y-%m-%d %H:%M',getftime(expand('%')))}"

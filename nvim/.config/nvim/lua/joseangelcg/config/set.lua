--use terminal cursor
vim.opt.guicursor = ""

--disable mouse bc who needs it?
vim.opt.mouse = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Tabs = 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Set spaces instead of tab
vim.opt.expandtab = true

-- Smart indenting obviosly
vim.opt.smartindent = true

-- No line wrap
vim.opt.wrap = false

-- Highlight search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- term color
vim.opt.termguicolors = true

-- scrolloff
vim.opt.scrolloff = 8

-- Indicate column 80
vim.opt.colorcolumn = "80"

--swp config
vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("USERPROFILE").."/.vim/undodir"
vim.opt.undofile = true

-- Term options for bash.
-- NOTE: This will make !cmds to not work on cmd.exe
vim.opt.shellxquote=""
vim.opt.shellcmdflag="-c"

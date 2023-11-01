require("scafeio")

-- Set runtimepath
vim.opt.runtimepath:prepend("~/.vim")
vim.opt.runtimepath:append("~/.vim/after")

-- Set packpath to the same as runtimepath
vim.opt.packpath = vim.opt.runtimepath:get()

-- Source the .vimrc file
vim.cmd("source ~/.vimrc")

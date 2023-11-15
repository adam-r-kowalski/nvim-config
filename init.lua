local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.opt.clipboard = "unnamedplus"
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.signcolumn = "number"
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.cmdheight = 0

vim.g.mapleader = " "

local opt = { noremap = true, silent = true }

vim.keymap.set("n", ";", ":", opt)
vim.keymap.set("n", "<c-h>", "<c-w>h", opt)
vim.keymap.set("n", "<c-j>", "<c-w>j", opt)
vim.keymap.set("n", "<c-k>", "<c-w>k", opt)
vim.keymap.set("n", "<c-l>", "<c-w>l", opt)
vim.keymap.set('i', 'jk', '<esc>', opt)

vim.cmd [[
  augroup yeti
    autocmd!
    autocmd BufRead,BufNewFile *.yeti set filetype=yeti
  augroup END
]]

require("lazy").setup("plugins")

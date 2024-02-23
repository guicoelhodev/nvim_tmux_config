-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.cmd[[ 
augroup highlight_yank 
  autocmd! 
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200}) 
augroup END 
]]
--enable relative number 
vim.opt.relativenumber = true
-- enable clipboard on linux - Install xclip to work 
vim.opt.clipboard:append("unnamedplus")

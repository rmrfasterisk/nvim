-- Highlight on Yank
vim.cmd [[
    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
    augroup END
]]

-- Remove trailing whitespaces
vim.cmd [[
    augroup trim_trailing_whitespaces
        autocmd!
        autocmd BufWritePre * %s/\s\+$//e
    augroup END
]]

-- Sync every time packer.lua is modified
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

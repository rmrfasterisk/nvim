local options = {
    signcolumn = "yes",
    cursorline = true,
    showtabline = 2,
    colorcolumn = "120",
    scrolloff = 8,
    splitbelow = true,
    splitright = true,
    pumheight = 10,
    showmode = false,
    backspace = "indent,eol,start",
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    encoding = "utf-8",
    expandtab = true,
    fileencoding = "utf-8",
    fileencodings = "utf-8",
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    inccommand = "split",
    incsearch = true,
    laststatus = 2,
    list = true,
    listchars = "trail:—",
    modeline = true,
    modelines = 10,
    mouse = "a",
    mousemodel = "popup",
    number = true,
    number = true,
    relativenumber = true,
    relativenumber = true,
    shiftwidth = 4,
    smartcase = true,
    softtabstop = 0,
    tabstop = 4,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

local os_check = vim.loop.os_uname().sysname

if( os_check == "Linux" ) then
    install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
else
    install_path = vim.fn.stdpath "data" .. "\\site\\pack\\packer\\start\\packer.nvim"
end

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "packer installed. Close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {
                border = "rounded",
            }
        end,
    },
}

return require("packer").startup(function(use)

  use "wbthomason/packer.nvim" -- Packer can manage itself
  use "joshdick/onedark.vim" -- One Dark Colorscheme
  use "windwp/nvim-autopairs"
  use "lukas-reineke/indent-blankline.nvim"
  use "lewis6991/impatient.nvim"
  use "nvim-lualine/lualine.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "numToStr/Comment.nvim"
  use "akinsho/bufferline.nvim"
  use "nvim-lua/plenary.nvim"
  use "lewis6991/gitsigns.nvim"
  use "rcarriga/nvim-notify"
  use "kyazdani42/nvim-tree.lua"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

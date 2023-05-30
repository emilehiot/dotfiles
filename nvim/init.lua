-- Config Nvim
vim.opt.encoding = "UTF-8"
vim.opt.number = true
vim.opt.autoread = true
vim.opt.list = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Pour de meilleurs performances
vim.o.lazyredraw = true    -- N'actualise l'écran que lorsque nécessaire

-- Load Lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leader Key (barre d'espace)
vim.g.mapleader = " "

-- Appel de Lazy.nvim qui recupère les setups dans le dossier ".config/nvim/lua/plugins"
require("lazy").setup("plugins")

-- Thèmes catppuccin (setup avec Lazy.nvim)
-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd.colorscheme "catppuccin-macchiato"

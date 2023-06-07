-- Config NeoVim --
require('config.options')
require('config.keymaps')

---------------------
-- Start Lazy.nvim -- Plugins Manager ".config/nvim/lua/plugins"
---------------------
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

-- Leader Key --
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- Recupere les plugins dans ".config/nvim/lua/plugins"
require("lazy").setup("plugins")
-------------------
-- End Lazy.Nvim --
-------------------

-- LSP, AutoComplete, Snippets Setup
require("lazy-lsp").setup {
  -- By default all available servers are set up. Exclude unwanted or misbehaving servers.
  excluded_servers = {
    "ccls", "zk", "sqls"
  },
  -- Alternatively specify preferred servers for a filetype (others will be ignored).
  preferred_servers = {
    sql = { "sqlls" },
    haskell = { "hls" },
    rust = { "rust_analyzer" },
  },
  -- Default config passed to all servers to specify on_attach callback and other options.
  default_config = {
    flags = {
      debounce_text_changes = 150,
    },
    -- on_attach = on_attach,
    -- capabilities = capabilities,
  },
  -- Override config for specific servers that will passed down to lspconfig setup.
  -- Note that the default_config will be nerged with this specific configuration so you don't need to specify everything twice.
  configs = {
    lua_ls = {
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
        },
      },
    },
  },
}
-- require('config.lsp_config') -- Manson setup
require('config.completion_config')

-- Library plugins mini-nvim -- { 'echasnovski/mini.nvim' } ".config/nvim/lua/plugins/library-mini.lua"
require('mini.tabline').setup()
require('mini.statusline').setup()
require('mini.indentscope').setup({symbol = '│'})
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.cursorword').setup()
require('mini.fuzzy').setup()
require('mini.comment').setup()

-- Autres --
require('fidget').setup()

-- Themes --
require('config.colorscheme')

-- return {
--  "williamboman/mason.nvim",
--  "williamboman/mason-lspconfig.nvim",
--  "neovim/nvim-lspconfig",
-- }

return {
  'dundalek/lazy-lsp.nvim',

  dependencies = {
    'neovim/nvim-lspconfig',
  }
}

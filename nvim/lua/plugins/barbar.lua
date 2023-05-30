return {
  'romgrk/barbar.nvim',
  dependencies = {
	'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
	'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
  init = function() vim.g.barbar_auto_setup = false end,
  config = function ()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<S-H>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<S-L>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<leader>q', '<Cmd>BufferClose!<CR>', opts)

    map('n', "<leader>tt", "<CMD>:tabnew<CR>", opts)
    map('n', '<leader>tp', '<Cmd>BufferPin<CR>', opts)
    map('n', '<leader>t,', '<Cmd>BufferMovePrevious<CR>', opts)
    map('n', '<leader>t.', '<Cmd>BufferMoveNext<CR>', opts)

  end,
  opts = {
    animation = false,
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}

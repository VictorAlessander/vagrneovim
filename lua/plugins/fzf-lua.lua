return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup {
      defaults = {
        git_icons = false,
        color_icons = false,
        file_icons = false,
      },
    }

    local fzf_lua = require 'fzf-lua'
    vim.keymap.set('n', '<leader>ff', fzf_lua.files, {})
    vim.keymap.set('n', '<leader>fg', fzf_lua.live_grep, {})
    vim.keymap.set('n', '<leader>fb', fzf_lua.buffers, {})
    vim.keymap.set('n', '<leader>fh', fzf_lua.helptags, {})
    vim.keymap.set('n', '<leader>fq', fzf_lua.resume, {})
    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>fn', function()
      fzf_lua.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}

return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
      spec = {
        { '<leader>ff', desc = 'Find File', mode = 'n' },
        { '<leader>fw', desc = 'Live Grep', mode = 'n' },
        { '<leader>fg', desc = 'Live Grep with args', mode = 'n' },
        { '<leader>fb', desc = 'Show buffers', mode = 'n' },
        { '<leader>fq', desc = 'Resume fzf lua window', mode = 'n' },
        { '<leader>fh', desc = 'Help Tags', mode = 'n' },
        { '<leader>a', desc = 'Add file to harpoon', mode = 'n' },
        { '<C-e>', desc = 'Toggle harpoon quick menu', mode = 'n' },
        { '<C-S-P>', desc = 'Toggle previous buffer stored within Harpoon list', mode = 'n' },
        { '<C-S-N>', desc = 'Toggle next buffer stored within Harpoon list', mode = 'n' },
        { '<S-f>', desc = 'Format file with Black using pre-defined settings', mode = 'n' },
        { '<S-r>', desc = 'Clean all opened buffers, excluding the current one', mode = 'n' },
      },
    },
  },
}

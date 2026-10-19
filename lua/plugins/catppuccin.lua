return {
  {
    'catppuccin/nvim',
    as = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        lsp_styles = {
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
          inlay_hints = {
            background = true,
          },
        },
        integrations = {
          blink_cmp = true,
          mason = true,
          which_key = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}

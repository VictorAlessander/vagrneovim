-- local config = function()
--   local telescope = require 'telescope'
--   local previewers = require 'telescope.previewers'
--
--   local _bad = { '.*%.*' } -- Put all filetypes that slow you down in this array
--   local bad_files = function(filepath)
--     for _, v in ipairs(_bad) do
--       if filepath:match(v) then
--         return false
--       end
--     end
--
--     return true
--   end
--
--   local Job = require 'plenary.job'
--
--   local new_maker = function(filepath, bufnr, opts)
--     opts = opts or {}
--     if opts.use_ft_detect == nil then
--       opts.use_ft_detect = true
--     end
--     opts.use_ft_detect = opts.use_ft_detect == false and false or bad_files(filepath)
--     previewers.buffer_previewer_maker(filepath, bufnr, opts)
--
--     filepath = vim.fn.expand(filepath)
--     Job:new({
--       command = 'file',
--       args = { '--mime-type', '-b', filepath },
--       on_exit = function(j)
--         local mime_type = vim.split(j:result()[1], '/')[1]
--         if mime_type == 'text' then
--           previewers.buffer_previewer_maker(filepath, bufnr, opts)
--         else
--           -- maybe we want to write something to the buffer here
--           vim.schedule(function()
--             vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { 'BINARY' })
--           end)
--         end
--       end,
--     }):sync()
--   end
--
--   require('telescope').setup {
--     defaults = {
--       layout_strategy = 'horizontal',
--       layout_config = { prompt_position = 'top' },
--       sorting_strategy = 'ascending',
--       winblend = 0,
--       buffer_previewer_maker = new_maker,
--       file_ignore_patterns = {
--         'node_modules',
--         'front_end',
--         'r.js',
--         'venv',
--       },
--     },
--     preview = {
--       filesize_limit = 0.2, -- MB
--       treesitter = false,
--     },
--     pickers = {
--       find_files = {
--         hidden = true,
--       },
--     },
--     extensions = {
--       'fzf',
--     },
--   }
--
--   local builtin = require 'telescope.builtin'
--   vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--   --vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
--   vim.keymap.set('n', '<leader>fg', "<CMD>lua require('telescope.builtin').live_grep({debounce = 100})<CR>", {})
--   --vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
--   vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--   vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--   vim.keymap.set('n', '<leader>fq', builtin.resume, {})
--   -- Shortcut for searching your Neovim configuration files
--   vim.keymap.set('n', '<leader>fn', function()
--     builtin.find_files { cwd = vim.fn.stdpath 'config' }
--   end, { desc = '[S]earch [N]eovim files' })
--
--   -- telescope.load_extension 'live_grep_args'
--   -- To get fzf loaded and working with telescope, you need to call
--   -- load_extension, somewhere after setup function:
--   telescope.load_extension 'fzf'
-- end

return {
  {
    'nvim-telescope/telescope.nvim',
    enabled = false,
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = config,
    keys = {
            -- add a keymap to browse plugin files
            -- stylua: ignore
            {
                "<leader>fg", "<CMD>lua require('telescope.builtin').live_grep({debounce = 100})<CR>", {}
            },
      {
        '<leader>fp',
        function()
          require('telescope.builtin').find_files { cwd = require('lazy.core.config').options.root }
        end,
        desc = 'Find Plugin File',
      },
    },
  },
}

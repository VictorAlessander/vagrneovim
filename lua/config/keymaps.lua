vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', '\\\\', ':Exp<CR>', { silent = true, noremap = true })

--vim.keymap.set('n', '<S-f>', '<cmd>:!black % --quiet --line-length=120<CR>')
vim.keymap.set('n', '<S-r>', ':%bd|e#<CR>')

vim.keymap.set('n', '<S-t>', function()
  local func_name = vim.fn.expand '<cword>'
  local output = vim.fn.systemlist('django-test --list ' .. func_name)
  if #output == 0 then
    vim.notify('No tests found for: ' .. func_name, vim.log.levels.WARN)
  elseif #output == 1 then
    -- Single match, run directly
    vim.cmd('split | terminal ' .. output[1])
  else
    -- Multiple matches, prompt user
    vim.ui.select(output, {
      prompt = 'Select test to run:',
    }, function(choice)
      if choice then
        vim.cmd('split | terminal ' .. choice)
      end
    end)
  end
end, { desc = '[R]un [D]jango [T]est for word under cursor' })

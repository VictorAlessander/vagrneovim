require("vagrconfigs.remap")
require("vagrconfigs.set")

local cmd = vim.cmd
local g = vim.g

local current_theme_name = os.getenv('BASE16_THEME')
if current_theme_name and g.colors_name ~= 'base16-'..current_theme_name then
  cmd('let base16colorspace=256')
  cmd('colorscheme base16-'..current_theme_name)
end

-- require("tokyonight").setup({
-- 	style = "moon",
-- 	transparent = true
-- })

-- vim.cmd[[colorscheme tokyonight]]

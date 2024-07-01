local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

local telescope = require("telescope")

telescope.setup({
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

telescope.load_extension("live_grep_args")

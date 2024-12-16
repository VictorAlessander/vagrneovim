local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fq", builtin.resume, {})

local telescope = require("telescope")

telescope.setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"front_end",
			"pwmain/static",
			"r.js",
			"venv"
		}
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

telescope.load_extension("live_grep_args")

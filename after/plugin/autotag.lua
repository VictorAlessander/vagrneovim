require("nvim-ts-autotag").setup({
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml", "typescriptreact", "javascriptreact", "tsx", "jsx", "eruby" },
	},
})

-- NVIM CONFIG --
auto_expand_width = false

-- VIM CONFIG --
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = true
vim.g.mapleader = ' '
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 1


-- START NEOTREE ON STARTUP --
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
	once = true,
	callback = function(_)
		if vim.fn.argc() == 0 then
			vim.cmd("Neotree")
		end
	end,
})

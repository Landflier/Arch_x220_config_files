vim.g.mapleader = " "
-- nvim keymaps
vim.keymap.set({"i", "n"}, "<C-p>", "\"+p")
vim.keymap.set({"i", "n"}, "<C-c>", "\"+y")

-- Netrw 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- explore file tree

-- nvim-spell
vim.keymap.set({"i","n"}, "<C-l>", "<c-g>u<Esc>[s1z=']a<c-g>u") -- fix last spelling mistake

-- vimlatex compile
--vim.keymap.set({'n', 'i'}, '<Leader>lc>',function() require('vimtex').VimtexComplie() end)

-- lazygit inside vim using floaterm

-- LuaSnip keymaps
local ls = require("luasnip") --{{{
vim.keymap.set({ "i", "s" }, "<A-q>", function() -- expand snippet
	if ls.expand_or_jumpable() then
		ls.expand()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<A-k>", function() -- jump forward
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<A-l>", function() -- jump backward
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

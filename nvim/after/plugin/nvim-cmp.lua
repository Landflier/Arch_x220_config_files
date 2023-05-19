local cmp = require("cmp")
local luasnip = require("luasnip")

--   פּ ﯟ   some other good icons
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			-- Kind icons
			--vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
			vim_item.menu = ({
				luasnip = "LuaSnip",
				nvim_lua = "[NVim Lua]",
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
	sources = {
		{ name = "luasnip" },
		{ name = "nvim_lsp", max_item_count = 6 },
		{ name = "nvim_lua" },
		{ name = "path" },
		{ name = "buffer", max_item_count = 6 },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
})
--  disable lsp dropdown menu
cmp.setup.filetype({' latex',  'markdown', 'help' }, {
	window = {
		documentation = cmp.config.disable
	}
})

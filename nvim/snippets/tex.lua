local ls = require("luasnip") --{{{
local s = ls.s --> snippet
local i = ls.i --> insert node
local t = ls.t --> text node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}
-- Example snippet
--local firstSnip = s("snip1", {t"Hi, this is my first latex snippet!"})
--table.insert(snippets, firstSnip)


local figSnip = s({trig = "bfig"}, fmt([[
	\begin{{figure}}[t]
	\centering
	\includegraphics[scale=0.75]{{ {} }}
	\caption{{ {} }}
\t      \label {{ {} }}	
	\end{{figure}}
]], 
{
	i(1,""),
	i(2,""),
	i(3,""),
--	f(function()
--		sec = vim.nvim_exec2{{"?section<CR>f{"}, {output = true}}
--		return sec
--	end),
})
)
table.insert(autosnippets, figSnip)

-- red higlight
local redtextSnip = s({trig = "vc"}, fmt([[
	\changedVasil{{ {} }}
]], 
{
	i(1,""),
})
)
table.insert(autosnippets, redtextSnip)

-- yellow highlight
local commentSnip = s({trig = "bcom"}, fmt([[
	\commentVasil{{ {} }}
]], 
{
	i(1,""),
})
)
table.insert(autosnippets, commentSnip)

local eqSnip = s("beq", fmt([[
	\begin{{equation}}
	\label {{ {} }}	
	\end{{equation}}
]], 
{
	i(1,""),
})
)
table.insert(autosnippets, eqSnip)
return snippets, autosnippets

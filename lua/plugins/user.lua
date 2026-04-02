-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

local texts = {
	{
		"       I may know something        ",
		"        But not everything         ",
	},
	{
		"  Programming isn't about syntax   ",
		"    It is also about the logic     ",
	},
	{
		"      People won't understand      ",
		"       what you really doing       ",
	},
	{
		"    Never base on the quantity     ",
		"     Its all about the quality     ",
	},
	{
		"   Never look for me for nothing   ",
		"      And I have my reasons        ",
	},
	{
		"   People are meant to one thing   ",
		"   To not understand one another   ",
	},
	{
		"   There's always a secret path   ",
		"  We'd just discovered in random   ",
	},
}

local x = math.floor(math.random(1, #texts))

---@type LazySpec
return {
	-- == Examples of Adding Plugins ==
	"andweeb/presence.nvim",
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function() require("lsp_signature").setup() end,
	},

	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				preset = {
					header = table.concat({
						"░░░░░░░░░█▄▒▄█▒█▀▄░▄▀▀▄▒█▀▄░░░░░░░░",
						"░░░░░░░░░█▒▀▒█░█▀▒░▀▄▄▀░█▀▒░░░░░░░░",
						" ",
						"▒█▀▄▒██▀░█▒█▒██▀▒█▀▄░▄▀▀▒██▀░░░█░█░",
						"░█▀▄░█▄▄░▀▄▀░█▄▄░█▀▄▒▄██░█▄▄▒░░█░█░",
						" ",
						"  https://github.com/RyannKim327",
						" ",
						texts[x][1],
						texts[x][2],
					}, "\n"),
				},
			},
		},
	},

	-- You can disable default plugins as follows:
	{ "max397574/better-escape.nvim", enabled = true },

	-- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
	{
		"L3MON4D3/LuaSnip",
		config = function(plugin, opts)
			require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
			-- add more custom luasnip configuration such as filetype extend or custom snippets
			local luasnip = require "luasnip"
			luasnip.filetype_extend("javascript", { "javascriptreact" })
		end,
	},

	-- {
	-- 	"windwp/nvim-autopairs",
	-- 	config = function(plugin, opts)
	-- 		require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
	-- 		-- add more custom autopairs configuration such as custom rules
	-- 		local npairs = require "nvim-autopairs"
	-- 		local Rule = require "nvim-autopairs.rule"
	-- 		local cond = require "nvim-autopairs.conds"
	-- 		npairs.add_rules(
	-- 			{
	-- 				Rule("$", "$", { "tex", "latex" })
	-- 					-- don't add a pair if the next character is %
	-- 					:with_pair(cond.not_after_regex "%%")
	-- 					-- don't add a pair if	the previous character is xxx
	-- 					:with_pair(cond.not_before_regex("xxx", 3))
	-- 					-- don't move right when repeat character
	-- 					:with_move(cond.none())
	-- 					-- don't delete if the next character is xx
	-- 					:with_del(cond.not_after_regex "xx")
	-- 					-- disable adding a newline when you press <cr>
	-- 					:with_cr(cond.none()),
	-- 			},
	-- 			-- disable for .vim files, but it work for another filetypes
	-- 			Rule("a", "a", "-vim")
	-- 		)
	-- 	end,
	-- },
}

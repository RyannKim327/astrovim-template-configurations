local themes = {
	"bamboo",
	"sea",
	"peach",
	"grape",
	"dusk",
	"summer",
}

local name = math.floor(math.random(1, #themes))

return {
	"mistricky/codesnap.nvim",
	init = function()
		local wk = require "which-key"
		name = math.floor(math.random(1, #themes))
		wk.add {
			{
				"<leader>sc",
				":CodeSnap<CR>",
				desc = "Snapshot Code",
				mode = "v",
			},
		}
	end,

	opts = {
		bg_theme = themes[name],
		bg_x_padding = 15,
		bg_y_padding = 15,
		watermark = "MPOP.2016",
		has_line_number = true,
		has_breadcrumbs = true,
	},
	build = "make",
}

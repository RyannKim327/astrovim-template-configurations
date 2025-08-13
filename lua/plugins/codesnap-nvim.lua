local themes = {
	"bamboo",
	"default",
	"dusk",
	"grape",
	"peach",
	"sea",
	"summer",
}

return {
	"mistricky/codesnap.nvim",
	init = function()
		local wk = require "which-key"
		wk.add {
			{
				"cc",
				":CodeSnap<CR>",
				desc = "Snapshot Code",
				mode = "v",
			},
			{
				"<leader>cs",
				":CodeSnapSave<CR>",
				desc = "Snapshot Code Save",
				mode = "v",
			},
		}
	end,

	opts = {
		bg_theme = themes[math.floor(math.random(0, #themes) + 1)],
		watermark = "MPOP.2016",
		watermark_font_family = "CaskaydiaCove Nerd Font Mono",
		has_line_number = true,
		has_breadcrumbs = true,
		save_path = "~/Pictures/Snapshot",
	},
	build = "make",
}

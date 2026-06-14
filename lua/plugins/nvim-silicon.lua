return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	init = function()
		local wk = require "which-key"
		wk.add {
			mode = { "v" },
			{ "<leader>s", group = "Silicon" },
			{ "<leader>sc", function() require("nvim-silicon").clip() end, desc = "Copy code screenshot to clipboard" },
			{ "<leader>sf", function() require("nvim-silicon").file() end, desc = "Save code screenshot as file" },
			{ "<leader>ss", function() require("nvim-silicon").shoot() end, desc = "Create code screenshot" },
		}
	end,
	config = function()
		require("silicon").setup {
			font = "CaskaydiaCove Nerd Font Mono=34;Noto Color Emoji=34",
			to_clipboard = true,
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			theme = "TwoDark",
		}
	end,
}

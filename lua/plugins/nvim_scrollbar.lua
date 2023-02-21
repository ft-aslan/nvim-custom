return {
	"petertriho/nvim-scrollbar",
	opts = function(scrollbar, opts)
		local colors = require("tokyonight.colors").setup()
		opts.handle = {
			color = colors.bg_highlight,
		}
		opts.marks = {
			Search = { color = colors.orange },
			Error = { color = colors.error },
			Warn = { color = colors.warning },
			Info = { color = colors.info },
			Hint = { color = colors.hint },
			Misc = { color = colors.purple },
		}
	end
}

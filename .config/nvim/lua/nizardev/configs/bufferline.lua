return {
	options = {
		mode = "buffers",
		separator_style = "thick",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		numbers = function(opts)
			return string.format("%s", opts.raise(opts.ordinal))
		end,
	},
}

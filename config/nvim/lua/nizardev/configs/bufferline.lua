return {
	options = {
		mode = "tabs",
		separator_style = "thick",
		numbers = function(opts)
			return string.format("%s", opts.raise(opts.ordinal))
		end,
	},
}

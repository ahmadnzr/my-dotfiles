return {
	-- add any opts here
	-- for example
	provider = "gemini",
	providers = {
		gemini = {
			model = "gemini-2.5-pro",
			-- model = "gemini-1.5-flash", -- Example of using a different model
			temperature = 0,
			max_tokens = 4096,
			-- endpoint = "https://generativelanguage.googleapis.com/v1beta/models",  -- Optional endpoint
		},
	},
}
local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		path_display = { "truncate " },
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
		file_ignore_patterns = {
			"node_modules",
		},
	},
})

telescope.load_extension("fzf")

-- set keymaps
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find file buffers in cwd" })

keymap.set("n", "<leader>bb", "<cmd>Telescope builtin<cr>", { desc = "" })

keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "" })
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "" })
keymap.set("n", "<leader>gt", "<cmd>Telescope git_stash<cr>", { desc = "" })

keymap.set("n", "<leader>km", "<cmd>Telescope keymaps<cr>", { desc = "" })

keymap.set("n", "<leader>sc", "<cmd>Telescope keymaps<cr>", { desc = "" })


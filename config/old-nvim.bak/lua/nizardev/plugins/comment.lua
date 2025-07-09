return {
  "numToStr/Comment.nvim",
  event = {"BufReadPre", "BufNewFile"},
  config = true -- run require('Comment').setup
}

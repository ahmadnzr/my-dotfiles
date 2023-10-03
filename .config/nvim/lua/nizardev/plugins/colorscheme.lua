return {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- load this before all the other plugins
    config = function ()
      -- load color scheme here
      vim.cmd([[colorscheme nightfly]])
    end,
}

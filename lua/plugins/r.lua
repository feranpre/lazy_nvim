return {
  "R-nvim/R.nvim",
  -- 'jalvesaq/Nvim-R', -- this plugin is obsolete
  keys = {

    { "<C-CR>", mode = "n", "<Plug>RDSendLine", { desc = "send [l]ine and move down" } },
    { "<C-CR>", mode = "v", "<Plug>RDSendSelection", { desc = "send [l]ine and move down" } },
  },
}

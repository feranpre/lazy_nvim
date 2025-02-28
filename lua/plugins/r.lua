return {
  "R-nvim/R.nvim",
  -- 'jalvesaq/Nvim-R', -- this plugin is obsolete
  keys = {

    { "<C-CR>", mode = "n", "<Plug>RDSendLine", desc = "send [l]ine and move down" },
    { "<C-CR>", mode = "v", "<Plug>RDSendSelection", desc = "send [l]ine and move down" },
    {
      "<localleader>bl",
      mode = "n",
      "<cmd>lua require('r.send').cmd('devtools::load_all()')<CR>",
      desc = "[l]oad all files",
    },
    {
      "<localleader>bb",
      mode = "n",
      "<cmd>lua require('r.send').cmd('devtools::build()')<CR>",
      desc = "[b]uild pkg",
    },
    {
      "<localleader>bi",
      mode = "n",
      "<cmd>lua require('r.send').cmd('devtools::install(args = \"--preclean --with-keep.source --no-multiarch\")')<CR>",
      desc = "[i]nstall pkg",
    },
    {
      "<localleader>bd",
      mode = "n",
      '<cmd>lua require(\'r.send\').cmd(\'devtools::document(roclets = c("rd", "collate", "namespace", "vignette"))\')<CR>',
      desc = "[d]ocument pkg",
    },
  },
}

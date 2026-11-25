return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- Terminal
        ["<F7>"] = false,
        ["<F12>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },

        -- Git Link
        ["<Leader>gy"] = { function() require("gitlinker").link() end, desc = "Yank git link" },
        ["<Leader>gY"] = { "<cmd>GitLink!<cr>", desc = "Browse remote" },
        ["<Leader>e"] = { "<cmd>Oil<cr>", desc = "Open oil file explorer" },
        ["<Leader>O"] = false,
      },
      t = {
        -- Terminal
        ["<F7>"] = false,
        ["<F12>"] = "<Cmd>ToggleTerm<CR>",
      },
      i = {
        -- Terminal
        ["<F7>"] = false,
        ["<F12>"] = "<Esc><Cmd>ToggleTerm<CR>",
      },
    },
  },
}

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,

    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = {
            ".git",
            "node-modules",
          },
        },
        group_empty_dirs = true,
      },
      buffers = {
        group_empty_dirs = true,
      },
    },
  },
}


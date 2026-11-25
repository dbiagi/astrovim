return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    skip_confirm_for_simple_edits = true,

    watch_for_changes = true,
    opts = {
      default_file_explorer = true,
      view_options = { show_hidden = true },
      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<C-s>"] = false,
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = { "actions.close", mode = "n" },
        ["<C-l>"] = "actions.refresh",
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["g~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["gx"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
      },
    },
  },
  {
    "AstroNvim/astrocore",
    opts = {
      rooter = {
        enabled = false,
      },
      autocmds = {
        oil_set_root_once = {
          {
            event = "VimEnter",
            desc = "Set Neovim root once on startup to the launch directory",
            once = true,
            callback = function() vim.cmd.cd(vim.fn.getcwd()) end,
          },
        },
      },
    },
  },
}

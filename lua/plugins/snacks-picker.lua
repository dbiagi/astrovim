-- Exclude noisy folders from Snacks picker (file finder, live grep, explorer)
-- Configuration documentation: https://github.com/folke/snacks.nvim/blob/main/docs/picker.md

---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          exclude = { ".git", "node_modules", ".idea", ".vscode" },
        },
        grep = {
          exclude = { ".git", "node_modules", ".idea", ".vscode" },
        },
        explorer = {
          exclude = { ".git", "node_modules", ".idea", ".vscode" },
        },
      },
    },
  },
}

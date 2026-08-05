-- Local development override for projectmgr.nvim.
-- The base spec is imported via AstroCommunity in `lua/community.lua`.
-- Setting `dev = true` makes lazy.nvim load the plugin from the local clone
-- at `<dev.path>/projectmgr.nvim` (configured in `lua/lazy_setup.lua`) instead
-- of fetching from GitHub. Remove this file to go back to the upstream version.

---@type LazySpec
return {
  "charludo/projectmgr.nvim",
  dev = true,
}

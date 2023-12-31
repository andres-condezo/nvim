local ok, obsidian = pcall(require, "obsidian")
if not ok then
  return
end

obsidian.setup({
  workspaces = {
    {
      name = "personal",
      path = "/media/adrs/TOSHIBA/vimwiki/personal/Spaces/Home/",
    },
    {
      name = "work",
      path = "/media/adrs/TOSHIBA/vimwiki/obsidian/work",
    },
    {
      name = "testing",
      path = "/media/adrs/TOSHIBA/vimwiki/obsidian/hello_vault/",
    },
    {
      name = "old",
      path = "/media/adrs/TOSHIBA/vimwiki/personal/",
    },
  },
  disable_frontmatter = false,
  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "calendar/diary",
    -- Optional, if you want to change the date format for the ID of daily notes.
    date_format = "%Y-%m-%d",
    -- Optional, if you want to change the date format of the default alias of daily notes.
    alias_format = "%B %-d, %Y"
  },
  -- Optional, key mappings.
  mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
  },

  -- Optional, if set to true, the specified mappings in the `mappings`
  -- table will overwrite existing ones. Otherwise a warning is printed
  -- and the mappings are not applied.
  overwrite_mappings = true,
})

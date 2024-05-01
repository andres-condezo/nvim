local ok, obsidian = pcall(require, "obsidian")
if not ok then
  return
end

obsidian.setup({
  workspaces = {
-- /media/adrs/WIKI/vimwiki/personal
    {
      name = "personal",
      path = "/media/adrs/WIKI/vimwiki/personal/",
    },
    {
      name = "old",
      path = "/media/adrs/WIKI/vimwiki/old-wiki/",
    },
    {
      name = "tech_docs",
      path = "/media/adrs/WIKI/vimwiki/tech_docs/",
    },
  },
  disable_frontmatter = false,
  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "10-calendar/diary",
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
  -- overwrite_mappings = true,
})

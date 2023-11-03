require("paint").setup({
  ---@type PaintHighlight[]
  highlights = {
    {
      filter = { filetype = "lua" },
      pattern = "%s*%-%-%-%s*(@%w+)",
      hl = "Constant",
    },
    {
        filter = { filetype = "vimwiki" },
        pattern = "foo",
        hl = "Comment",
    },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "TASK",
    --     hl = "Comment",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "#%s%d%d%d%d%-%d%d%-%d%d",
    --     hl = "lualine_a_replace",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "^#%s%w*%s*%w*", -- header ##
    --     hl = "ErrorMsg",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "^##%s%w*%s*%w*", -- header ##
    --     hl = "Macro",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "^###%s%w*%s*%w*", -- header ##
    --     hl = "Structure",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "^####%s%w*%s*%w*", -- header ##
    --     hl = "Type",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "^#####%s%w*%s*%w*", -- header ##
    --     hl = "Define",
    -- },
    {
        filter = { filetype = "vimwiki" },
        pattern = "●",
        hl = "Define",
    },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "##%s%w* | [%.%:%-%+%s%w]*", -- *foo*
    --     hl = "lualine_a_command",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "%*.-%*", -- *foo*
    --     hl = "Comment",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "\u{2705}%s[^#]*", -- *foo*
    --     hl = "Comment",
    -- },
    -- {
    --     filter = { filetype = "vimwiki" },
    --     pattern = "%u2705%s[^#]*", -- *foo*
    --     hl = "Comment",
    -- },
  },
})

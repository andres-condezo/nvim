local status_ok, conceal = pcall(require, "conceal")
if not status_ok then
	return
end

-- should be run before .generate_conceals to use user Configuration
conceal.setup({
    --[[ ["language"] = {
        enabled = bool,
        ["keyword"] = {
            enabled     = bool,
            conceal     = string,
            highlight   = string
        }
    } ]]
    ["javascript"] = {
      ["local"] = {
        enabled = true -- to disable concealing for "local"
      },
      ["return"] = {
        conceal = "R" -- to set the concealing to "R"
      },
    },
    ["lua"] = {
      ["local"] = {
        enabled = true -- to disable concealing for "local"
      },
      ["return"] = {
        conceal = "R" -- to set the concealing to "R"
      },
      ["for"] = {
        highlight = "keyword" -- to set the Highlight group to "@keyword"
      }
    },
    -- ["language"] = {
    --   enabled = true -- to disable the whole language
    -- }
})

-- generate the scm queries
-- only need to be run when the Configuration changes
conceal.generate_conceals()

-- bind a <leader>tc to toggle the concealing level
vim.keymap.set("n", "<leader>tc", function()
  require("conceal").toggle_conceal()
end, { silent = true})

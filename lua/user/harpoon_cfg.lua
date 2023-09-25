local silent, keymap = { silent = true }, vim.keymap.set
local ui = require("harpoon.ui")
local mark = require("harpoon.mark")
local feedk = function() vim.api.nvim_feedkeys('zz', 'n', true) end
require("telescope").load_extension('harpoon')

keymap("n", "<leader><leader>ms", '<cmd>:Telescope harpoon marks<CR>', silent)
keymap("n", "<leader><leader>s", ui.toggle_quick_menu, silent)
keymap("n", "<leader><leader>ma", mark.add_file)
keymap("n", "<leader><leader>mc", '<cmd>:DoShowMarks<CR>', silent)

local binds = 5
for i = 1, binds do
  keymap("n", "<leader>"..i, function() ui.nav_file(i) feedk() end, silent)
end

local M = {}

vim.g.todo_open = 0

function M.showTodos()
  if vim.g.todo_open == 1 then
    vim.g.todo_open = 0
    vim.cmd("Bdelete!")
  else
    vim.cmd('edit ~/todos.md')
    vim.wo.relativenumber = false
    vim.wo.number = false
    vim.wo.foldcolumn = "5"
    vim.wo.signcolumn = 'no'
    vim.g.todo_open = 1
  end
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "ñz", "<cmd>:lua require'user.todo'.showTodos()<CR>", opts)

return M

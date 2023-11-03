local M = {}
local toBool = {
  ["1"] = true,
  ["0"] = false,
}

function M.toggleFoldCol()
  if toBool[vim.opt.foldcolumn:get()] then
    vim.opt.foldcolumn = "0"
  else
    vim.opt.foldcolumn = "1"
  end
end

function M.toggleRelativeNumber()
  if ( vim.opt.relativenumber:get() ) then
    vim.opt.relativenumber = false
  else
    vim.opt.relativenumber = true
  end
end

function M.toggleTabLine()
  if ( (vim.opt.showtabline:get()) == 0 ) then
    vim.opt.showtabline = 3
  else
    vim.opt.showtabline = 0
  end
end

function M.toggleWrap()
  if ( vim.opt.wrap:get() ) then
    vim.opt.wrap = false
  else
    vim.opt.wrap = true
  end
end

function M.toggleCalendar()
  vim.cmd [[
    execute ":Calendar"
    if exists("g:calendar_open")
      if g:calendar_open == 1
        execute "q"
        unlet g:calendar_open
      else
        g:calendar_open = 1
      end
    else
      let g:calendar_open = 1
    end
  ]]
end

-- function M.Delmarks()
--   vim.cmd [[
--     let l:m = join(filter(
--        \ map(range(char2nr('a'), char2nr('z')), 'nr2char(v:val)'),
--        \ 'line("''".v:val) == line(".")'))
--     if !empty(l:m)
--         exe 'delmarks' l:m
--     end
--   ]]
-- end

function M.Delmarks()
  local marks = {}
  for i = string.byte('a'), string.byte('z') do
    local mark = vim.fn.nr2char(i)
    if vim.fn.line("'" .. mark) == vim.fn.line('.') then
      table.insert(marks, mark)
    end
  end
  if #marks > 0 then
    vim.cmd('delmarks ' .. table.concat(marks, ''))
  end
  for i = string.byte('A'), string.byte('Z') do
    local mark = vim.fn.nr2char(i)
    if vim.fn.line("'" .. mark) == vim.fn.line('.') then
      table.insert(marks, mark)
    end
  end
  if #marks > 0 then
    vim.cmd('delmarks ' .. table.concat(marks, ''))
  end
end

M.toggleConceal = function(level)
  local state = vim.o.conceallevel
  if state ~= 0 then
      vim.o.conceallevel = 0
  else
      vim.o.conceallevel = 2
  end
end

M.toggleCmdHeight = function()
  local state = vim.o.cmdheight
  if state ~= 1 then
      vim.o.cmdheight = 1
  else
      vim.o.cmdheight = 2
  end
end

return M

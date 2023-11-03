local Hydra = require('hydra')

Hydra({
   name='MD',
   config = {
      color = 'pink',
      invoke_on_body = true,
      -- hint = {
      --    position = 'bottom',
      --    border = 'rounded'
      -- },
      on_enter = function()
         -- vim.bo.modifiable = false
         vim.cmd "let g:table_mode_corner='|'"
         vim.cmd "colorscheme material"
      end,
      on_exit = function()
         vim.cmd "colorscheme codedark"
         vim.cmd 'echo' -- clear the echo area
      end
   },
   mode = {'n','x'},
   body = ',hm',
   heads = {
      -- Nav
      { 'J', '<Plug>Markdown_MoveToNextHeader', { silent = true } },
      { 'K', '<Plug>Markdown_MoveToPreviousHeader', { silent = true } },
      { 'L', '<Plug>Markdown_MoveToNextSiblingHeader', { silent = true } },
      { 'H', '<Plug>Markdown_MoveToPreviousSiblingHeader', { silent = true } },
      { 'E', '<Plug>Markdown_MoveToParentHeader', { silent = true } },

      { 'ge', '<Plug>Markdown_EditUrlUnderCursor', { silent = true } },
      { 'gl', '<Plug>Markdown_OpenUrlUnderCursor', { desc = "<-Nav", silent = true } },

      -- Index
      { 'Ir', '<C-w>h<cmd>vertical resize 20<CR><CR>', { silent = true } },
      { 'Ip', '<cmd>Toc<CR><C-w>H<cmd>vertical resize 20<CR><CR>', { silent = true } },
      { 'gi', ':GenTocGFM<CR>', { desc = "<-Ix", silent = true } },

      -- Mode
      { 'Pp', "<cmd>PeekOpen<CR>",{ silent = true } },
      { 'Pf', "<cmd>MarkdownPreviewToggle<CR>",{ silent = true } },
      { 'gm', '<cmd>set filetype=markdown<CR>', { silent = true } },
      { 'gw', '<cmd>set filetype=vimwiki<CR>', { silent = true } },
      { 'Tt', '<cmd>TableModeToggle<CR>', { silent = true } },
      { 'X', '<cmd>Toc<CR><C-w>H<cmd>vertical resize 20<CR><CR> \
     | :TableModeEnable<CR> \
     | :MarkdownPreviewToggle<CR>', { silent = true } },

      -- Format 
      { 'Tf', '<cmd>TableFormat<CR>', { silent = true } },
      { 'Tl', ':Tabularize /', { silent = true } },
      { '+', '<cmd>HeaderIncrease<CR>', { silent = true } },
      { '-', '<cmd>HeaderDecrease<CR>', { silent = true } },

      -- Quit
      { 'q', nil, { exit = true, nowait = true } },
   }
})

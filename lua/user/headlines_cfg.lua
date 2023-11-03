-- vim.cmd [[highlight Headline1 guibg=#1e2718]]
-- vim.cmd [[highlight Headline2 guibg=#21262d]]
-- vim.cmd [[highlight CodeBlock guibg=#1c1c1c]]
-- vim.cmd [[highlight Dash guibg=#D19A66 gui=bold]]

-- headline_highlights = {
--     'Headline1',
--     'Headline2',
--     'Headline3',
--     'Headline4',
--     'Headline5',
--     'Headline6',
-- }

-- vim.api.nvim_set_hl(0, 'VimwikiHeader2', { fg = '#cb7676', bg = '#402626', italic = false })

-- vim.api.nvim_set_hl(0, 'Headline1', { fg = '#cb7676', bg = '#402626', italic = false })
-- vim.api.nvim_set_hl(0, 'Headline2', { fg = '#c99076', bg = '#66493c', italic = false })
-- vim.api.nvim_set_hl(0, 'Headline3', { fg = '#80a665', bg = '#3d4f2f', italic = false })
-- vim.api.nvim_set_hl(0, 'Headline4', { fg = '#4c9a91', bg = '#224541', italic = false })
-- vim.api.nvim_set_hl(0, 'Headline5', { fg = '#6893bf', bg = '#2b3d4f', italic = false })
-- vim.api.nvim_set_hl(0, 'Headline6', { fg = '#d3869b', bg = '#6b454f', italic = false })

-- execute 'syn match VimwikiH2Folding containedin=VimwikiTask contained /|[^=]*/'.s:conceal
-- execute'syntax match VimwikiHeader3 '\v#{3}'hs=e-4 conceal cchar=●'

-- vim.cmd [[
--   syntax match VimwikiHeader1 '\v#{1}'hs=e-4 conceal cchar=◉
--   syntax match VimwikiHeader2 '\v#{2}'hs=e-4 conceal cchar=◎
--   syntax match VimwikiHeader3 '\v#{3}'hs=e-4 conceal cchar=●
--   syntax match VimwikiHeader4 '\v#{4}'hs=e-4 conceal cchar=○
--   syntax match VimwikiHeader5 '\v#{5}'hs=e-4 conceal cchar=◌
-- ]]
--
-- vim.cmd [[
-- let g:dfm_width = 80 "absolute width or percentage, like 0.7
-- let g:dfm_height = 0.8
--
-- let s:dfm_enabled = 0
--
-- function! ToggleDistractionFreeMode()
--   let l:w = g:dfm_width > 1 ? g:dfm_width : (winwidth('%') * g:dfm_width)
--   let l:margins = {
-- 	\ "l": ("silent leftabove " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
-- 	\ "h": ("silent rightbelow " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
-- 	\ "j": ("silent leftabove " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
-- 	\ "k": ("silent rightbelow " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
-- 	\ }
--   if (s:dfm_enabled == 0)
--     let s:dfm_enabled = 1
--     for key in keys(l:margins)
--       execute l:margins[key] . " | wincmd " . key
--     endfor
--     " for key in ['NonText', 'VertSplit', 'StatusLine', 'StatusLineNC']
--     "   execute 'hi ' . key . ' ctermfg=bg ctermbg=bg cterm=NONE'
--     " endfor
--     set wrap | set linebreak
--     map j gj
--     map k gk
--   else
--     let s:dfm_enabled = 0
--     for key in keys(l:margins)
--       execute "wincmd " . key . " | close "
--     endfor
--     set nowrap | set nolinebreak
--     unmap j
--     unmap k
--   endif
-- endfunction
--
-- nmap <silent> <Leader>z :call ToggleDistractionFreeMode()<CR>
-- ]]
--
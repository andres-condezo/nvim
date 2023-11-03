#!/bin/zsh
" syntax match todoCheckbox '\*\ \[S\]'hs=e-2 conceal cchar=🟨
" syntax match todoCheckbox '\*\ \[X\]'hs=e-2 conceal cchar=✅
" syntax match todoCheckbox '\*\ \[\ \]'hs=e-2 conceal cchar=⬜
" setlocal conceallevel=2

" hi Conceal guigb=NONE
" hi clear Conceal

setlocal concealcursor=c

syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\s\]'hs=e-4 conceal cchar=⬜
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[x\]'hs=e-4 conceal cchar=✅
" syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[x\]'hs=e-4 conceal cchar=☒
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[S\]'hs=e-4 conceal cchar=🟨
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[-\]'hs=e-4 conceal cchar=☒
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\.\]'hs=e-4 conceal cchar=⊡
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[o\]'hs=e-4 conceal cchar=⬕
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[O\]'hs=e-4 conceal cchar=⬕
" headers
" syntax match VimwikiHeader1 '\v#{1}'hs=e-4 conceal cchar=◉
" syntax match VimwikiHeader2 '\v#{2}'hs=e-4 conceal cchar=◎
" syntax match VimwikiHeader3 '\v#{3}'hs=e-4 conceal cchar=●
" syntax match VimwikiHeader4 '\v#{4}'hs=e-4 conceal cchar=○
" syntax match VimwikiHeader5 '\v#{5}'hs=e-4 conceal cchar=◌

" syntax match VimwikiHeader1 '\v#{1}'hs=e-4 conceal cchar=⭕
" syntax match VimwikiHeader2 '\v#{2}'hs=e-4 conceal cchar=🟠
" syntax match VimwikiHeader3 '\v#{3}'hs=e-4 conceal cchar=🟢
" syntax match VimwikiHeader4 '\v#{4}'hs=e-4 conceal cchar=🔵
" syntax match VimwikiHeader5 '\v#{5}'hs=e-4 conceal cchar=🟣

" sy region par1 matchgroup=par1 start=/(/ end=/)/ contains=par2
" sy region par2 matchgroup=par2 start=/(/ end=/)/ contains=par3 contained
" sy region par3 matchgroup=par3 start=/(/ end=/)/ contains=par1 contained
" hi par1 ctermfg=red guifg=red
" hi par2 ctermfg=blue guifg=blue
" hi par3 ctermfg=darkgreen guifg=darkgreen

" sy region tpar1 matchgroup=VimwikiHeader2 start=/☒/ end=/\s/
" hi tpar1 ctermfg=red guifg=red
" hi TaskWikiTaskCompleted ctermfg=darkgreen guifg=darkgreen


" \u{2705}%s[^#]*
" syntax match TaskWikiTaskCompleted containedin=TaskWikiTask contained contains=@TaskWikiTaskContains /☒\s[^#]*/

" hi def link todoCheckbox Todo
" highlight Conceal guibg=NONE guifg=#00cf37
" setlocal conceallevel=1

" vim.api.nvim_set_hl(0, 'VimwikiHeaderChar', { fg = '#cb7676', bg = '#402626', italic = false })

" execute 'syn match TaskWikiHeaderDef containedin=VimwikiHeader'.s:i.' contained /|[^=]*/'.s:conceal
" highlight link TaskWikiHeaderDef Comment

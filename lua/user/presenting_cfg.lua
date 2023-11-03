-- au FileType rst let b:presenting_slide_separator = '\v(^|\n)\~{4,}'

vim.cmd[[
    au FileType markdown let b:presenting_slide_separator = '---'
    au FileType md let b:presenting_slide_separator = '---'
    au FileType vimwiki let b:presenting_slide_separator = '---'
]]

vim.cmd[[
    augroup presentation
        autocmd!
    " ASCII art
        au Filetype markdown nnoremap <buffer> <F12> :.!toilet -w 200 -f term -F border<CR>
    augroup end
]]

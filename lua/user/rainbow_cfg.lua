-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'Conditional',
        'Function',
        'Constant',
        'Special', -- orange
        'Structure', -- green
        'Keyword',
        'htmlarg',
    },
}

vim.cmd[[
    " au ColorSchemePre MyTheme highlight link RainbowDelimiter MyThemeRed
    " au ColorSchemePre MyTheme highlight link RainbowDelimiter MyThemeYellow

    " Link to an existing highlight group
    " highlight link RainbowDelimiterRed WarningMsg
    " highlight link RainbowDelimiterBlue Keyword
    " highlight link RainbowDelimiterViolet Keyword
    " highlight link RainbowDelimiterCyan Keyword
    " highlight link RainbowDelimiterGreen Keyword

    " Define the highlight from scratch
    " highlight RainbowDelimiterOrange  guifg=#d65d0e ctermfg=White
    " highlight RainbowDelimiterBlue  guifg=#d65d0e ctermfg=White
]]

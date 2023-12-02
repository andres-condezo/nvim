local M = {}

function M.timestamp(str)
    return vim.fn.substitute(str, [[\(\d\{2}\):\(\d\{2}\)]], [[['.\1.':'.\2'](https://www.youtube.com/watch?v='.str.'#t='.\1*60+\2.')]], 'g')
    return vim.fn.substitute( )
end

function timestampReplace(str)
  vim.api.nvim_command([[
    %s/\(\(\d\{2}\)\:\(\d\{2}\)\)/\= '[' . submatch(1) . ':' . submatch(2) . '](https:\/\/www.youtube.com\/watch?v=nR3lDe7m6eU#t=' . (submatch(2) + submatch(1) * 60) . ')/gIc
    | $put = ']] .. str .. [['
  ]])
end

_G.timestampReplaceTest = function(str)
  -- vim.api.nvim_command(%s/(\(\d\{2}\):\(\d\{2}\))/\='['.(submatch(1)).':'.(submatch(2)).'](https:'."\/\/".'www.youtube.com'."\/".'watch?v='.'nR3lDe7m6eU'.'#t='.(submatch(1)*60+submatch(2)).')'/gIce)
  vim.api.nvim_command(%s/youtbe/foobar/gIce)
end

return M

-- use this table to disable/enable filetypes
-- vim.g.copilot_filetypes = { xml = false }

-- since most are enabled by default you can turn them off
-- using this table and only enable for a few filetypes
-- vim.g.copilot_filetypes = { ["*"] = false, python = true }
-- vim.g.copilot_filetypes = { ["*"] = true }
-- vim.g.copilot_filetypes = { python = false, markdown = true, md = true, vimwiki = true }
-- vim.cmd[[
--   let g:copilot_filetypes = {
--         \ 'markdown': 1,
--         \ 'yaml': 1,
--         \ 'vimwiki': 1,
--         \ }
-- ]]
-- vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]

-- local opts = { noremap = true, silent = true }
-- local keymap = vim.api.nvim_set_keymap
--
-- keymap("i", "<C-A-i>", "<cmd>copilot#Accept('<CR>')<CR>", opts)
-- vim.g.copilot_no_tab_map = true

vim.cmd[[
      imap <silent><script><expr> <C-A-l> copilot#Accept("\<CR>")
      let g:copilot_no_tab_map = v:true
]]

-- vim.keymap.set.keymap("i", "<C-a>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })

-- <C-]>                   Dismiss the current suggestion.
-- <Plug>(copilot-dismiss)
--
--                                                 *copilot-i_ALT-]*
-- <M-]>                   Cycle to the next suggestion, if one is available.
-- <Plug>(copilot-next)
--
--                                                 *copilot-i_ALT-[*
-- <M-[>                   Cycle to the previous suggestion.
-- <Plug>(copilot-previous)


vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]

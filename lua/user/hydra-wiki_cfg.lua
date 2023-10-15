local Hydra = require("hydra")

Hydra({
	config = {
		color = "pink",
		invoke_on_body = true,
		-- hint = {
		--    position = 'bottom',
		--    border = 'rounded'
		-- },
		on_enter = function()
			-- vim.bo.modifiable = false
			vim.cmd("let g:table_mode_corner='|'")
			local bg = vim.opt.background:get()
			if bg == "light" then
				vim.cmd("colorscheme everforest")
			else
				vim.cmd("colorscheme miramare")
			end
		end,
		on_exit = function()
			vim.cmd("colorscheme vscode")
			vim.cmd("echo") -- clear the echo area
		end,
	},
	mode = { "n", "x" },
	body = ",hk",
	heads = {
		-- Motion
		{ "<C-j>", "}", { silent = true } },
		{ "<C-k>", "{", { silent = true } },
		{ "L", ":VimwikiFollowLink<CR>", { silent = true } },
		{ "H", ":VimwikiGoBackLink<CR>", { silent = true } },
		{ "J", ":VimwikiNextLink<CR>", { silent = true } },
		{ "K", ":VimwikiPrevLink<CR>", { desc = "<-Motion|", silent = true } },
		{ "W", ":vsplit<CR>|:TW<CR>", { silent = true } },
		{ "R", ":TaskWikiBufferLoad<CR>", { silent = true } },
		{ "+", ":!task add 📍  due:today+" .. string.rep("<Left>", 11), { silent = true } },

		-- Quit
		{ "<Esc>", nil, { exit = true } },
		{ "q", nil, { exit = true, nowait = true } },
	},
})

vim.cmd([[
   let tech_wiki = {}
   let tech_wiki.path = '~/vimwiki/tech_docs/'
   let tech_wiki.index = 'index'
   let tech_wiki.html_template = '~/public_html/template.tpl'
   let tech_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'javascript': 'js', 'ruby': 'rb'}
   let tech_wiki.auto_diary_index = 1
   let tech_wiki.syntax = 'markdown'
   let tech_wiki.ext = '.md'

   let personal_wiki = {}
   let personal_wiki.path = '~/vimwiki/personal_docs/'
   let personal_wiki.index = 'main'
   let personal_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'javascript': 'js', 'ruby': 'rb'}
   let personal_wiki.auto_diary_index = 1
   let personal_wiki.syntax = 'markdown'
   let personal_wiki.ext = '.md'

   let shopping_wiki = {}
   let shopping_wiki.path = '~/vimwiki/shopping_docs/'
   let shopping_wiki.index = 'main'
   let shopping_wiki.auto_diary_index = 1
   let shopping_wiki.syntax = 'markdown'
   let shopping_wiki.ext = '.md'

   let g:vimwiki_list = [personal_wiki, tech_wiki, shopping_wiki]
   let g:vimwiki_markdown_link_ext = 1
]])

-- let g:vimwiki_listsyms = ' ○✗'
-- let g:vimwiki_listsyms = ' ○◐●✗'
require("telescope").load_extension("vimwiki")

-- taskwarrior_nvim
-- require("taskwarrior_nvim").setup({})
-- require("taskwarrior_nvim").browser({"ready"})

-- taskwiki
vim.cmd([[
	let g:taskwiki_sort_orders={"S": "status+,priority+","P": "priority+", "U": "status-"}
]])

-- vim-taskwarrior
-- vim.cmd([[
-- 	let g:task_rc_override     = 'rc.defaultwidth=999999999'
-- ]])

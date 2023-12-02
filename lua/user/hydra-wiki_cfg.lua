local Hydra = require("hydra")

Hydra({
	name='WK',
	config = {
		color = "pink",
		invoke_on_body = true,
		hint = false,
		-- hint = {
		-- 	 type = "statusline" 
		-- },
		-- hint = {
		--    position = 'top',
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
		{ "<C-A-u>", "<cmd>VimwikiNextTask<CR>", { silent = true } },
		{ "L", "<cmd>silent VimwikiFollowLink<CR>", { silent = true } },
		{ "H", "<cmd>VimwikiGoBackLink<CR>", { silent = true } },
		{ "J", "<cmd>VimwikiNextLink<CR>", { silent = true } },
		{ "K", "<cmd>VimwikiPrevLink<CR>", { desc = "<Mov", silent = true } },

		-- Tasks
		-- { "G", ":vsplit<CR>|:TW<CR>", { silent = true } },
		{ "R", ":TaskWikiBufferLoad<CR>", { silent = false } },
		{ "T", "<cmd>silent TaskWikiToggle<CR>", { silent = true } },
		{ "+", "<cmd>FineCmdline<CR>!task add  due:" .. string.rep("<Left>", 5), { desc = "<Tsk", silent = true } },

		-- MD
		{ "gm", "<cmd>set filetype=markdown<CR>", { silent = true } },
		{ "gw", "<cmd>set filetype=vimwiki<CR>", { silent = true } },
		{ 'Pp', "<cmd>PeekOpen<CR>",{ silent = true } },
		{ 'Pf', "<cmd>MarkdownPreviewToggle<CR>",{ silent = true } },
		-- { 'Pf', ':lua vim.g.mkdp_browser = "firefox"<CR>|:MarkdownPreviewToggle<CR>', { silent = true } },
		{ 'Pr', "<cmd>MarkdownPreviewToggle<CR>|:MarkdownPreviewToggle<CR>",{ silent = true } },
		{ 'Ip', '<cmd>Toc<CR><C-w>H<cmd>vertical resize 20<CR><CR>', { silent = true } },
		{ 'Ir', '<C-w>h<cmd>vertical resize 20<CR><CR>', { silent = true } },
		-- Table mode
		{ 'Tt', '<cmd>TableModeToggle<CR>', { silent = true } },
		{ 'Tf', '<cmd>TableFormat<CR>', { silent = true } },
		{ 'Tl', ':Tabularize /', { silent = true } },
		{ 'W', ': e <C-r>+<CR>|:echo ""<CR>', { silent = true } },
		{ 'Y', '<cmd>PasteImg<CR>', { silent = true } },

		-- Quit
		{ "q", nil, { exit = true, nowait = true } },
	},
})

vim.cmd([[
   let old_wiki = {}
   let old_wiki.path = '/media/adrs/TOSHIBA/vimwiki/personal/'
   let old_wiki.index = 'main'
   let old_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'javascript': 'js', 'ruby': 'rb'}
   let old_wiki.auto_diary_index = 1
   let old_wiki.syntax = 'markdown'
   let old_wiki.ext = '.md'

   let personal_wiki = {}
   let personal_wiki.path = '/media/adrs/TOSHIBA/vimwiki/personal/Spaces/Home/'
   let personal_wiki.index = 'index'
   let personal_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'javascript': 'js', 'ruby': 'rb'}
   let personal_wiki.auto_diary_index = 1
   let personal_wiki.syntax = 'markdown'
   let personal_wiki.ext = '.md'

   let tech_wiki = {}
   let tech_wiki.path = '/media/adrs/TOSHIBA/vimwiki/tech_docs/'
   let tech_wiki.index = 'index'
   let tech_wiki.html_template = '~/public_html/template.tpl'
   let tech_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'javascript': 'js', 'ruby': 'rb'}
   let tech_wiki.auto_diary_index = 1
   let tech_wiki.syntax = 'markdown'
   let tech_wiki.ext = '.md'

   let shopping_wiki = {}
   let shopping_wiki.path = '/media/adrs/TOSHIBA/vimwiki/shopping_docs/'
   let shopping_wiki.index = 'main'
   let shopping_wiki.auto_diary_index = 1
   let shopping_wiki.syntax = 'markdown'
   let shopping_wiki.ext = '.md'

   let hello_vault_wiki = {}
   let shopping_wiki.path = '/media/adrs/TOSHIBA/vimwiki/obsidian/hello_vault/'
   let shopping_wiki.index = 'main'
   let shopping_wiki.auto_diary_index = 1
   let shopping_wiki.syntax = 'markdown'
   let shopping_wiki.ext = '.md'

   let g:vimwiki_list = [old_wiki, personal_wiki, tech_wiki, shopping_wiki, hello_vault_wiki, {'auto_diary_index': 1}]
   let g:vimwiki_markdown_link_ext = 1
	 let g:vimwiki_listsyms = ' x'
]])

-- let g:vimwiki_listsyms = ' ○◐●✗'
require("telescope").load_extension("vimwiki")

-- taskwarrior_nvim
-- require("taskwarrior_nvim").setup({})
-- require("taskwarrior_nvim").browser({"ready"})

-- taskwiki
vim.cmd([[
	let g:taskwiki_sort_orders={"S": "status+,priority+","P": "priority+", "U": "status-"}
	let g:taskwiki_uuid_char="$"
]])

-- vim-taskwarrior
-- vim.cmd([[
-- 	let g:task_rc_override     = 'rc.defaultwidth=999999999'
-- ]])

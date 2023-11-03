-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/adrs/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/adrs/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/adrs/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/adrs/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/adrs/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Shade.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/Shade.nvim",
    url = "https://github.com/0x100101/Shade.nvim"
  },
  ["TrueZen.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/TrueZen.nvim",
    url = "https://github.com/Pocco81/TrueZen.nvim"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["aquarium-vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/aquarium-vim",
    url = "https://github.com/frenzyexists/aquarium-vim"
  },
  bufexplorer = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/bufexplorer",
    url = "https://github.com/jlanzarotta/bufexplorer"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["calendar-vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/calendar-vim",
    url = "https://github.com/mattn/calendar-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-neosnippet"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-neosnippet",
    url = "https://github.com/notomo/cmp-neosnippet"
  },
  ["cmp-npm"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-npm",
    url = "https://github.com/David-Kunz/cmp-npm"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-snippy"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-snippy",
    url = "https://github.com/dcampos/cmp-snippy"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/codi.vim",
    url = "https://github.com/metakirby5/codi.vim"
  },
  ["color-picker.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/color-picker.nvim",
    url = "https://github.com/ziontee113/color-picker.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["conceal.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/conceal.nvim",
    url = "https://github.com/Jxstxs/conceal.nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim"
  },
  everforest = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim",
    url = "https://github.com/VonHeikemen/fine-cmdline.nvim"
  },
  ["flit.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/flit.nvim",
    url = "https://github.com/ggandor/flit.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbox-baby"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/gruvbox-baby",
    url = "https://github.com/luisiacc/gruvbox-baby"
  },
  harpoon = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hlargs.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["horizon.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/horizon.nvim",
    url = "https://github.com/lunarvim/horizon.nvim"
  },
  ["hydra.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jaq-nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/jaq-nvim",
    url = "https://github.com/is0n/jaq-nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["keymap-layer.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/keymap-layer.nvim",
    url = "https://github.com/anuvyklack/keymap-layer.nvim"
  },
  ["kmonad-vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/kmonad-vim",
    url = "https://github.com/kmonad/kmonad-vim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["leap-ast.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/leap-ast.nvim",
    url = "https://github.com/ggandor/leap-ast.nvim"
  },
  ["leap-spooky.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/leap-spooky.nvim",
    url = "https://github.com/ggandor/leap-spooky.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  miramare = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/miramare",
    url = "https://github.com/franbach/miramare"
  },
  neon = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/neon",
    url = "https://github.com/rafamadriz/neon"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-dap-vscode-js"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-dap-vscode-js",
    url = "https://github.com/mxsdev/nvim-dap-vscode-js"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-snippy"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["onedarker.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/onedarker.nvim",
    url = "https://github.com/LunarVim/onedarker.nvim"
  },
  ["onenord.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/onenord.nvim",
    url = "https://github.com/rmehri01/onenord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["paint.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/paint.nvim",
    url = "https://github.com/folke/paint.nvim"
  },
  ["peek.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/peek.nvim",
    url = "https://github.com/saimo/peek.nvim"
  },
  ["plantuml-syntax"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/plantuml-syntax",
    url = "https://github.com/aklt/plantuml-syntax"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presenting.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/presenting.vim",
    url = "https://github.com/sotte/presenting.vim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["rainbow-delimiters.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/rainbow-delimiters.nvim",
    url = "https://github.com/hiphish/rainbow-delimiters.nvim"
  },
  ["rest.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["searchbox.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/searchbox.nvim",
    url = "https://github.com/VonHeikemen/searchbox.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  spaceduck = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/spaceduck",
    url = "https://github.com/pineapplegiant/spaceduck"
  },
  ["splitjoin.vim"] = {
    keys = { { "n", "gJ" }, { "n", "gS" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["synonyms.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/synonyms.vim",
    url = "https://github.com/Sanhajio/synonyms.vim"
  },
  ["syntax-tree-surfer"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/syntax-tree-surfer",
    url = "https://github.com/ziontee113/syntax-tree-surfer"
  },
  tabular = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  taskwiki = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/taskwiki",
    url = "https://github.com/andres-condezo/taskwiki"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope-vimwiki.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/telescope-vimwiki.nvim",
    url = "https://github.com/ElPiloto/telescope-vimwiki.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggle-lsp-diagnostics.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/toggle-lsp-diagnostics.nvim",
    url = "https://github.com/WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyodark.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  treesj = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0" },
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/treesj",
    url = "https://github.com/Wansmer/treesj"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  vim = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/embark-theme/vim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-csscomb"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-csscomb",
    url = "https://github.com/csscomb/vim-csscomb"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-diagram"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-diagram",
    url = "https://github.com/zhaozg/vim-diagram"
  },
  ["vim-dotenv"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-dotenv",
    url = "https://github.com/tpope/vim-dotenv"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-lastplace",
    url = "https://github.com/farmergreg/vim-lastplace"
  },
  ["vim-latex-live-preview"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-latex-live-preview",
    url = "https://github.com/xuhdev/vim-latex-live-preview"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/preservim/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  ["vim-rubocop"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-rubocop",
    url = "https://github.com/ngmy/vim-rubocop"
  },
  ["vim-ruby"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-ruby",
    url = "https://github.com/vim-ruby/vim-ruby"
  },
  ["vim-showmarks"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-showmarks",
    url = "https://github.com/jacquesbh/vim-showmarks"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-taskwarrior"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-taskwarrior",
    url = "https://github.com/farseer90718/vim-taskwarrior"
  },
  ["vim-textobj-erb"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-textobj-erb",
    url = "https://github.com/whatyouhide/vim-textobj-erb"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-translator",
    url = "https://github.com/voldikss/vim-translator"
  },
  ["vim-two-firewatch"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-two-firewatch",
    url = "https://github.com/rakr/vim-two-firewatch"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  vimtex = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  vimwiki = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["vscode-js-debug"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/opt/vscode-js-debug",
    url = "https://github.com/microsoft/vscode-js-debug"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winbar.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/winbar.nvim",
    url = "https://github.com/fgheng/winbar.nvim"
  },
  ["winshift.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/adrs/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: treesj
time([[Config for treesj]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0", "config", "treesj")
time([[Config for treesj]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown', 'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/adrs/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/adrs/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/adrs/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

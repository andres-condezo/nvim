local colorschemes = {
	"tokyonight-night",
	"darkplus",
	"kanagawa",
	"codedark",
	"gruvbox-baby",
	"vscode",
	"horizon",
}

local colorscheme = colorschemes[7]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

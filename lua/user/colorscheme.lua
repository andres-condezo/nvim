local function getColorScheme(number)
    local colorschemes = {
        {1, "vscode"},
        {2, "tokyonight-night"},
        {3, "darkplus"},
        {4, "kanagawa"},
        {5, "codedark"},
        {6, "gruvbox-baby"},
        {7, "horizon"},
    }

    return colorschemes[number][2]
end

local colorscheme = getColorScheme(1)

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

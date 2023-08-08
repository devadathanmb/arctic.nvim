-- Lualine theme
-- Put it under lualine.nvim/lua/lualine/themes/ and then set `options.theme =
-- arctic` in your luaine's config.

-- Load configs
local config = vim.g.arctic_config
local transparent = config.transparent

local colors = {
	pink = "#c586c0",
	red = "#c72e0f",
	orange = "#cc6633",
	green = "#16825d",
	blue = "#007acc",
	violet = "#646695",
	purple = "#68217a",
	white = "#ffffff",
	gray = "#1e1e1e", -- 15% lighter than black
	black = "#1e1e1e",
}

print(transparent)
if transparent then
	colors.black = "NONE"
	colors.gray = "NONE"
end

return {
	normal = {
		a = { fg = colors.white, bg = colors.blue },
		b = { fg = colors.white, bg = colors.gray },
		c = { fg = colors.white, bg = colors.black },
	},
	insert = {
		a = { fg = colors.white, bg = colors.orange },
	},
	visual = {
		a = { fg = colors.white, bg = colors.purple },
	},
	replace = {
		a = { fg = colors.white, bg = colors.pink },
	},
	command = {
		a = { fg = colors.white, bg = colors.green },
	},
	terminal = {
		a = { fg = colors.white, bg = colors.violet },
	},
	pending = {
		a = { fg = colors.white, bg = colors.red },
	},
	inactive = {
		a = { fg = colors.white, bg = colors.black },
	},
}

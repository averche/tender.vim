local tender = {}

local palette = require("tender.palettes.tender")

tender.normal = {
	a = { bg = palette.blue4, fg = palette.blue1 },
	b = { bg = palette.bg, fg = palette.blue2 },
	c = { bg = palette.blue1, fg = palette.grey3 },
}

tender.insert = {
	a = { bg = palette.green4, fg = palette.green1 },
	b = { bg = palette.bg, fg = palette.green2 },
	c = { bg = palette.green1, fg = palette.green4 },
}

tender.command = {
	a = { bg = palette.yellow, fg = palette.bg },
	b = { bg = palette.bg, fg = palette.yellow },
	c = { bg = palette.float, fg = palette.yellow },
}

tender.visual = {
	a = { bg = palette.bg, fg = palette.yellow2 },
	b = { bg = palette.bg, fg = palette.yellow3 },
	c = { bg = palette.yellow2, fg = palette.grey3 },
}

tender.replace = {
	a = { bg = palette.bg, fg = palette.red1 },
	b = { bg = palette.bg, fg = palette.red2 },
	c = { bg = palette.red1, fg = palette.grey3 },
}

tender.terminal = {
	a = { bg = palette.yellow, fg = palette.bg },
	b = { bg = palette.bg, fg = palette.yellow },
	c = { bg = palette.float, fg = palette.yellow },
}

tender.inactive = {
	a = { bg = palette.gandalf, fg = palette.grey2 },
	b = { bg = palette.gandalf, fg = palette.grey3 },
	c = { bg = palette.gandalf, fg = palette.grey3 },
}

return tender

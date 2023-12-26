local tender = {}

local palette = require("tender.palettes.tender")

tender.normal = {
	a = { bg = palette.blue1, fg = palette.grey3 },
	b = { bg = palette.bg, fg = palette.blue2 },
	c = { bg = palette.shadow, fg = palette.blue1 },
}

tender.insert = {
	a = { bg = palette.green1, fg = palette.green4 },
	b = { bg = palette.bg, fg = palette.green2 },
	c = { bg = palette.green4, fg = palette.green1 },
}

tender.command = {
	a = { bg = palette.yellow2, fg = palette.grey3 },
	b = { bg = palette.bg, fg = palette.yellow1 },
	c = { bg = palette.shadow, fg = palette.yellow2 },
}

tender.visual = {
	a = { bg = palette.yellow2, fg = palette.grey3 },
	b = { bg = palette.bg, fg = palette.yellow1 },
	c = { bg = palette.shadow, fg = palette.yellow2 },
}

tender.replace = {
	a = { bg = palette.red1, fg = palette.grey3 },
	b = { bg = palette.bg, fg = palette.red2 },
	c = { bg = palette.shadow, fg = palette.red1 },
}

tender.terminal = {
	a = { bg = palette.blue1, fg = palette.grey3 },
	b = { bg = palette.bg, fg = palette.blue2 },
	c = { bg = palette.shadow, fg = palette.blue1 },
}

tender.inactive = {
	a = { bg = palette.gandalf, fg = palette.grey3 },
	b = { bg = palette.gandalf, fg = palette.grey3 },
	c = { bg = palette.gandalf, fg = palette.grey2 },
}

return tender

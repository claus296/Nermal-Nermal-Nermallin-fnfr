return graphics.newSprite(
	images.notesG,
	{
		{x = 0, y = 0, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: blue0000
		{x = 153, y = 312, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: blue hold end0000
		{x = 204, y = 312, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: blue hold piece0000
		{x = 158, y = 0, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: green0000
		{x = 153, y = 312, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: green hold end0000
		{x = 204, y = 312, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: green hold piece0000
		{x = 153, y = 312, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: pruple end hold0000
		{x = 0, y = 155, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: purple0000
		{x = 204, y = 312, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: purple hold piece0000
		{x = 155, y = 155, width = 154, height = 156, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: red0000
		{x = 153, y = 312, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: red hold end0000
		{x = 204, y = 312, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 12: red hold piece0000
	},
	{
		["end"] = {start = 5, stop = 5, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 4, stop = 4, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 6, stop = 6, speed = 0, offsetX = 0, offsetY = 0}
	},
	"on",
	false
)
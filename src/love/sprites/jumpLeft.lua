return graphics.newSprite(
	images.notesJ,
	{
		{x = 0, y = 0, width = 151, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: green0000
		{x = 0, y = 0, width = 1, height = 1, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 2: green0000
	},
	{
		["on"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["hold"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0},
		["end"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0}
	},
	"on",
	false
)
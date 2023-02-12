return graphics.newSprite(
	images.notesJ2,
	{
		{x = 226, y = 85, width = 50, height = 62, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: blue hold end0000
		{x = 226, y = 41, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: blue hold piece0000
		{x = 0, y = 0, width = 114, height = 149, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: blue0000
		{x = 226, y = 85, width = 50, height = 62, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: green hold end0000
		{x = 226, y = 41, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: green hold piece0000
		{x = 114, y = 0, width = 112, height = 147, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: green0000
		{x = 0, y = 149, width = 150, height = 115, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: purple0000
		{x = 226, y = 85, width = 50, height = 62, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: pruple end hold0000
		{x = 226, y = 41, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: purple hold piece0000
		{x = 226, y = 85, width = 50, height = 62, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: red hold end0000
		{x = 226, y = 41, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: red hold piece0000
		{x = 150, y = 149, width = 148, height = 113, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 12: red0000
	},
	{
		["end"] = {start = 10, stop = 10, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 12, stop = 12, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 11, stop = 11, speed = 0, offsetX = 0, offsetY = 0}
	},
	"on",
	false
)
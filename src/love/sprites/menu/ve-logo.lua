return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("menu/ve-logo")), -- Do not add the .png extension
	{
		{x = 881, y = 0, width = 862, height = 485, offsetX = 0, offsetY = 0, offsetWidth = 962, offsetHeight = 559}, -- 1: logo bumpin0000
		{x = 0, y = 497, width = 906, height = 511, offsetX = 19, offsetY = 12, offsetWidth = 962, offsetHeight = 559}, -- 2: logo bumpin0001
		{x = 0, y = 497, width = 906, height = 511, offsetX = 19, offsetY = 12, offsetWidth = 962, offsetHeight = 559}, -- 3: logo bumpin0002
		{x = 0, y = 0, width = 880, height = 496, offsetX = 8, offsetY = 3, offsetWidth = 962, offsetHeight = 559}, -- 4: logo bumpin0003
		{x = 0, y = 0, width = 880, height = 496, offsetX = 8, offsetY = 3, offsetWidth = 962, offsetHeight = 559}, -- 5: logo bumpin0004
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 6: logo bumpin0005
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 7: logo bumpin0006
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 8: logo bumpin0007
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 9: logo bumpin0008
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 10: logo bumpin0009
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 11: logo bumpin0010
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 12: logo bumpin0011
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 13: logo bumpin0012
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559}, -- 14: logo bumpin0013
		{x = 907, y = 497, width = 873, height = 492, offsetX = 4, offsetY = 2, offsetWidth = 962, offsetHeight = 559} -- 15: logo bumpin0014
	},
	{
		["anim"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)

return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("ourple/ourple")), -- Do not add the .png extension
	{
		{x = 5, y = 5, width = 259, height = 428, offsetX = -2, offsetY = -1, offsetWidth = 261, offsetHeight = 429}, -- 1: Down0000
		{x = 5, y = 5, width = 259, height = 428, offsetX = -2, offsetY = -1, offsetWidth = 261, offsetHeight = 429}, -- 2: Down0001
		{x = 269, y = 5, width = 259, height = 428, offsetX = 0, offsetY = 0, offsetWidth = 261, offsetHeight = 429}, -- 3: Down0002
		{x = 269, y = 5, width = 259, height = 428, offsetX = 0, offsetY = 0, offsetWidth = 261, offsetHeight = 429}, -- 4: Down0003
		{x = 533, y = 5, width = 275, height = 527, offsetX = 0, offsetY = 0, offsetWidth = 284, offsetHeight = 528}, -- 5: Idle0000
		{x = 533, y = 5, width = 275, height = 527, offsetX = 0, offsetY = 0, offsetWidth = 284, offsetHeight = 528}, -- 6: Idle0001
		{x = 813, y = 5, width = 275, height = 527, offsetX = -9, offsetY = 0, offsetWidth = 284, offsetHeight = 528}, -- 7: Idle0002
		{x = 813, y = 5, width = 275, height = 527, offsetX = -9, offsetY = 0, offsetWidth = 284, offsetHeight = 528}, -- 8: Idle0003
		{x = 1093, y = 5, width = 275, height = 527, offsetX = -5, offsetY = -1, offsetWidth = 284, offsetHeight = 528}, -- 9: Idle0004
		{x = 1093, y = 5, width = 275, height = 527, offsetX = -5, offsetY = -1, offsetWidth = 284, offsetHeight = 528}, -- 10: Idle0005
		{x = 1373, y = 5, width = 275, height = 527, offsetX = -3, offsetY = -1, offsetWidth = 284, offsetHeight = 528}, -- 11: Idle0006
		{x = 1373, y = 5, width = 275, height = 527, offsetX = -3, offsetY = -1, offsetWidth = 284, offsetHeight = 528}, -- 12: Idle0007
		{x = 1653, y = 5, width = 369, height = 503, offsetX = 0, offsetY = 0, offsetWidth = 387, offsetHeight = 503}, -- 13: Left0000
		{x = 1653, y = 5, width = 369, height = 503, offsetX = 0, offsetY = 0, offsetWidth = 387, offsetHeight = 503}, -- 14: Left0001
		{x = 2027, y = 5, width = 369, height = 490, offsetX = -18, offsetY = 0, offsetWidth = 387, offsetHeight = 503}, -- 15: Left0002
		{x = 2027, y = 5, width = 369, height = 490, offsetX = -18, offsetY = 0, offsetWidth = 387, offsetHeight = 503}, -- 16: Left0003
		{x = 2401, y = 5, width = 321, height = 492, offsetX = -10, offsetY = 0, offsetWidth = 331, offsetHeight = 492}, -- 17: Right0000
		{x = 2401, y = 5, width = 321, height = 492, offsetX = -10, offsetY = 0, offsetWidth = 331, offsetHeight = 492}, -- 18: Right0001
		{x = 2727, y = 5, width = 321, height = 492, offsetX = 0, offsetY = 0, offsetWidth = 331, offsetHeight = 492}, -- 19: Right0002
		{x = 2727, y = 5, width = 321, height = 492, offsetX = 0, offsetY = 0, offsetWidth = 331, offsetHeight = 492}, -- 20: Right0003
		{x = 3053, y = 5, width = 400, height = 631, offsetX = 0, offsetY = -1, offsetWidth = 405, offsetHeight = 632}, -- 21: Up0000
		{x = 3053, y = 5, width = 400, height = 631, offsetX = 0, offsetY = -1, offsetWidth = 405, offsetHeight = 632}, -- 22: Up0001
		{x = 3458, y = 5, width = 400, height = 631, offsetX = -5, offsetY = 0, offsetWidth = 405, offsetHeight = 632}, -- 23: Up0002
		{x = 3458, y = 5, width = 400, height = 631, offsetX = -5, offsetY = 0, offsetWidth = 405, offsetHeight = 632}, -- 24: Up0003
		{x = 5, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: altDown0000
		{x = 5, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: altDown0001
		{x = 5, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: altDown0002
		{x = 413, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: altDown0003
		{x = 413, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: altDown0004
		{x = 413, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: altDown0005
		{x = 821, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: altLeft0000
		{x = 821, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: altLeft0001
		{x = 821, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: altLeft0002
		{x = 1229, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 34: altLeft0003
		{x = 1229, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 35: altLeft0004
		{x = 1229, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 36: altLeft0005
		{x = 1637, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 37: altRight0000
		{x = 1637, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 38: altRight0001
		{x = 1637, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 39: altRight0002
		{x = 2045, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 40: altRight0003
		{x = 2045, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 41: altRight0004
		{x = 2045, y = 641, width = 403, height = 582, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 42: altRight0005
		{x = 2453, y = 641, width = 511, height = 724, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 43: altUp0000
		{x = 2453, y = 641, width = 511, height = 724, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 44: altUp0001
		{x = 2453, y = 641, width = 511, height = 724, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 45: altUp0002
		{x = 2969, y = 641, width = 511, height = 724, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 46: altUp0003
	},
	{
		["idle"] = {start = 5, stop = 12, speed = 24, offsetX = 0, offsetY = 0},
		["down"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = -65},
		["left"] = {start = 13, stop = 16, speed = 24, offsetX = -15, offsetY = -20},
		["right"] = {start = 17, stop = 20, speed = 24, offsetX = -30, offsetY = -18},
		["up"] = {start = 21, stop = 24, speed = 24, offsetX = 5, offsetY = 25},
		["down alt"] = {start = 25, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
		["left alt"] = {start = 31, stop = 36, speed = 24, offsetX = 50, offsetY = -30},
		["right alt"] = {start = 37, stop = 42, speed = 24, offsetX = -90, offsetY = -27},
		["up alt"] = {start = 43, stop = 46, speed = 24, offsetX = -10, offsetY = 55}
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)

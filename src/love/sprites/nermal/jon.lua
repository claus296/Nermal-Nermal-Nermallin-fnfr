return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("nermal/jon")), -- Do not add the .png extension
	{
		{x = 509, y = 0, width = 482, height = 959, offsetX = -676, offsetY = -443, offsetWidth = 2160, offsetHeight = 1620}, -- 1: jon idle0000
		{x = 1481, y = 0, width = 481, height = 948, offsetX = -678, offsetY = -452, offsetWidth = 2160, offsetHeight = 1620}, -- 2: jon idle0001
		{x = 0, y = 0, width = 509, height = 977, offsetX = -651, offsetY = -424, offsetWidth = 2160, offsetHeight = 1620}, -- 3: jon idle0002
		{x = 991, y = 0, width = 490, height = 956, offsetX = -670, offsetY = -445, offsetWidth = 2160, offsetHeight = 1620}, -- 4: jon idle0003
		{x = 0, y = 0, width = 509, height = 977, offsetX = -651, offsetY = -424, offsetWidth = 2160, offsetHeight = 1620}, -- 5: jon idle0004
		{x = 1481, y = 0, width = 481, height = 948, offsetX = -678, offsetY = -452, offsetWidth = 2160, offsetHeight = 1620}, -- 6: jon idle0005
		{x = 509, y = 0, width = 482, height = 959, offsetX = -676, offsetY = -443, offsetWidth = 2160, offsetHeight = 1620}, -- 7: jon idle0006
		{x = 1962, y = 0, width = 656, height = 894, offsetX = -543, offsetY = -518, offsetWidth = 2160, offsetHeight = 1620}, -- 8: jon right0000
		{x = 2618, y = 0, width = 667, height = 886, offsetX = -625, offsetY = -526, offsetWidth = 2160, offsetHeight = 1620}, -- 9: jon right0001
		{x = 2618, y = 886, width = 667, height = 874, offsetX = -659, offsetY = -539, offsetWidth = 2160, offsetHeight = 1620}, -- 10: jon right0002
		{x = 1962, y = 894, width = 655, height = 873, offsetX = -689, offsetY = -540, offsetWidth = 2160, offsetHeight = 1620}, -- 11: jon right0003
		{x = 656, y = 1896, width = 656, height = 745, offsetX = -579, offsetY = -647, offsetWidth = 2160, offsetHeight = 1620}, -- 12: jon up0000
		{x = 0, y = 1896, width = 656, height = 849, offsetX = -579, offsetY = -544, offsetWidth = 2160, offsetHeight = 1620}, -- 13: jon up0001
		{x = 656, y = 977, width = 656, height = 901, offsetX = -579, offsetY = -492, offsetWidth = 2160, offsetHeight = 1620}, -- 14: jon up0002
		{x = 0, y = 977, width = 656, height = 919, offsetX = -579, offsetY = -474, offsetWidth = 2160, offsetHeight = 1620}, -- 15: jon up0003
		{x = 2130, y = 1896, width = 810, height = 659, offsetX = -460, offsetY = -779, offsetWidth = 2160, offsetHeight = 1620}, -- 16: jon down0000
		{x = 788, y = 2745, width = 810, height = 604, offsetX = -460, offsetY = -834, offsetWidth = 2160, offsetHeight = 1620}, -- 17: jon down0001
		{x = 1598, y = 2745, width = 810, height = 566, offsetX = -460, offsetY = -872, offsetWidth = 2160, offsetHeight = 1620}, -- 18: jon down0002
		{x = 2408, y = 2745, width = 810, height = 552, offsetX = -460, offsetY = -886, offsetWidth = 2160, offsetHeight = 1620}, -- 19: jon down0003
		{x = 3285, y = 659, width = 685, height = 658, offsetX = -485, offsetY = -748, offsetWidth = 2160, offsetHeight = 1620}, -- 20: jon left0000
		{x = 3285, y = 0, width = 751, height = 659, offsetX = -419, offsetY = -747, offsetWidth = 2160, offsetHeight = 1620}, -- 21: jon left0001
		{x = 0, y = 2745, width = 788, height = 659, offsetX = -382, offsetY = -747, offsetWidth = 2160, offsetHeight = 1620}, -- 22: jon left0002
		{x = 1312, y = 1896, width = 818, height = 661, offsetX = -352, offsetY = -745, offsetWidth = 2160, offsetHeight = 1620} -- 23: jon left0003
	},
	{
		["idle"] = {start = 1, stop = 7, speed = 24, offsetX = 0, offsetY = 0},
		["down"] = {start = 16, stop = 19, speed = 24, offsetX = 0, offsetY = 0},
		["right"] = {start = 20, stop = 23, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 8, stop = 11, speed = 24, offsetX = 0, offsetY = 0},
		["up"] = {start = 12, stop = 15, speed = 24, offsetX = 0, offsetY = 0}
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)

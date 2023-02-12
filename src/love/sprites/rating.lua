--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]

return graphics.newSprite(
	images.rating,
	{
		{x = 0, y = 151, width = 354, height = 147, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Sick Plus
		{x = 0, y = 0, width = 318, height = 147, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Sick
		{x = 355, y = 151, width = 268, height = 116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Good
		{x = 568, y = 0, width = 195, height = 131, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Bad
		{x = 319, y = 0, width = 248, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Shit
	},
	{
		["sickPlus"] = {start = 1, stop = 1, speed = 0, offsetX = -37, offsetY = -7},
		["sick"] = {start = 2, stop = 2, speed = 0, offsetX = -19, offsetY = -4},
		["good"] = {start = 3, stop = 3, speed = 0, offsetX = -7, offsetY = -2},
		["bad"] = {start = 4, stop = 4, speed = 0, offsetX = -3, offsetY = -5},
		["shit"] = {start = 5, stop = 5, speed = 0, offsetX = -21, offsetY = -5}
	},
	"sickPlus",
	false
)

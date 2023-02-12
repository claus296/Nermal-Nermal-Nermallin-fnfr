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
	images.notes,
	{
		{x = 451, y = 681, width = 157, height = 155, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: arrowDOWN0000
		{x = 956, y = 152, width = 51, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: blue hold end10000
		{x = 903, y = 938, width = 51, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: blue hold piece  10000
		{x = 0, y = 686, width = 158, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: blue0000
		{x = 0, y = 0, width = 240, height = 237, offsetX = -2, offsetY = -4, offsetWidth = 240, offsetHeight = 240}, -- 5: down confirm  10000
		{x = 240, y = 0, width = 240, height = 237, offsetX = -2, offsetY = -4, offsetWidth = 240, offsetHeight = 240}, -- 6: down confirm  10001
		{x = 0, y = 467, width = 222, height = 219, offsetX = -11, offsetY = -12, offsetWidth = 240, offsetHeight = 237}, -- 7: down confirm  10002
		{x = 0, y = 467, width = 222, height = 219, offsetX = -11, offsetY = -12, offsetWidth = 240, offsetHeight = 237}, -- 8: down confirm  10003
		{x = 760, y = 843, width = 143, height = 140, offsetX = -4, offsetY = -3, offsetWidth = 150, offsetHeight = 146}, -- 9: down press  10000
		{x = 760, y = 843, width = 143, height = 140, offsetX = -4, offsetY = -3, offsetWidth = 150, offsetHeight = 146}, -- 10: down press  10001
		{x = 466, y = 843, width = 150, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: down press  10002
		{x = 466, y = 843, width = 150, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 12: down press  10003
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 4, stop = 4, speed = 0, offsetX = 0, offsetY = 0},
		["end"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 3, stop = 3, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 5, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 9, stop = 12, speed = 24, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)

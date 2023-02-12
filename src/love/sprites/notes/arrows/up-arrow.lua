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
		{x = 765, y = 689, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: arrowUP0000
		{x = 1007, y = 44, width = 51, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: green hold end  10000
		{x = 988, y = 384, width = 51, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: green hold piece  10000
		{x = 608, y = 689, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: green0000
		{x = 480, y = 0, width = 238, height = 235, offsetX = -2, offsetY = 0, offsetWidth = 238, offsetHeight = 235}, -- 5: up confirm  10000
		{x = 718, y = 0, width = 238, height = 235, offsetX = -2, offsetY = 0, offsetWidth = 238, offsetHeight = 235}, -- 6: up confirm  10001
		{x = 451, y = 468, width = 216, height = 213, offsetX = -13, offsetY = -11, offsetWidth = 238, offsetHeight = 235}, -- 7: up confirm  10002
		{x = 451, y = 468, width = 216, height = 213, offsetX = -13, offsetY = -11, offsetWidth = 238, offsetHeight = 235}, -- 8: up confirm  10003
		{x = 616, y = 843, width = 144, height = 142, offsetX = -6, offsetY = -2, offsetWidth = 154, offsetHeight = 151}, -- 9: up press  10000
		{x = 616, y = 843, width = 144, height = 142, offsetX = -6, offsetY = -2, offsetWidth = 154, offsetHeight = 151}, -- 10: up press  10001
		{x = 312, y = 836, width = 154, height = 151, offsetX = 0, offsetY = 2, offsetWidth = 154, offsetHeight = 151}, -- 11: up press  10002
		{x = 312, y = 836, width = 154, height = 151, offsetX = 0, offsetY = 2, offsetWidth = 154, offsetHeight = 151} -- 12: up press  10003
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

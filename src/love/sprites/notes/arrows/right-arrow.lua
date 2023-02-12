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
		{x = 928, y = 624, width = 155, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: arrowRIGHT0000
		{x = 956, y = 44, width = 51, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: red hold end  10000
		{x = 937, y = 384, width = 51, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: red hold piece  10000
		{x = 158, y = 693, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: red0000
		{x = 226, y = 237, width = 225, height = 228, offsetX = -4, offsetY = 0, offsetWidth = 228, offsetHeight = 231}, -- 5: right confirm  10000
		{x = 226, y = 465, width = 225, height = 228, offsetX = -4, offsetY = 0, offsetWidth = 228, offsetHeight = 231}, -- 6: right confirm  10001
		{x = 709, y = 235, width = 228, height = 231, offsetX = -4, offsetY = 1, offsetWidth = 228, offsetHeight = 231}, -- 7: right confirm  10002
		{x = 709, y = 235, width = 228, height = 231, offsetX = -4, offsetY = 1, offsetWidth = 228, offsetHeight = 231}, -- 8: right confirm  10003
		{x = 148, y = 850, width = 138, height = 142, offsetX = -8, offsetY = -5, offsetWidth = 148, offsetHeight = 152}, -- 9: right press  10000
		{x = 148, y = 850, width = 138, height = 142, offsetX = -8, offsetY = -5, offsetWidth = 148, offsetHeight = 152}, -- 10: right press  10001
		{x = 0, y = 840, width = 148, height = 152, offsetX = -2, offsetY = 0, offsetWidth = 148, offsetHeight = 152}, -- 11: right press  10002
		{x = 0, y = 840, width = 148, height = 152, offsetX = -2, offsetY = 0, offsetWidth = 148, offsetHeight = 152} -- 12: right press  10003
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

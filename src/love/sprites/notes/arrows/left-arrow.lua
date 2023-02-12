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
		{x = 928, y = 466, width = 155, height = 158, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: arrowLEFT0000
		{x = 480, y = 235, width = 229, height = 233, offsetX = -2, offsetY = -2, offsetWidth = 229, offsetHeight = 233}, -- 2: left confirm  10000
		{x = 709, y = 466, width = 219, height = 223, offsetX = -7, offsetY = -7, offsetWidth = 229, offsetHeight = 233}, -- 3: left confirm  10001
		{x = 0, y = 237, width = 226, height = 230, offsetX = -4, offsetY = -3, offsetWidth = 229, offsetHeight = 233}, -- 4: left confirm  10002
		{x = 0, y = 237, width = 226, height = 230, offsetX = -4, offsetY = -3, offsetWidth = 229, offsetHeight = 233}, -- 5: left confirm  10003
		{x = 312, y = 693, width = 139, height = 142, offsetX = -6, offsetY = -4, offsetWidth = 146, offsetHeight = 149}, -- 6: left press  10000
		{x = 312, y = 693, width = 139, height = 142, offsetX = -6, offsetY = -4, offsetWidth = 146, offsetHeight = 149}, -- 7: left press  10001
		{x = 937, y = 235, width = 146, height = 149, offsetX = -2, offsetY = -1, offsetWidth = 146, offsetHeight = 149}, -- 8: left press  10002
		{x = 937, y = 235, width = 146, height = 149, offsetX = -2, offsetY = -1, offsetWidth = 146, offsetHeight = 149}, -- 9: left press  10003
		{x = 1007, y = 152, width = 51, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: pruple end hold  10000
		{x = 954, y = 938, width = 51, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: purple hold piece  10000
		{x = 922, y = 781, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 12: purple0000
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 2, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 6, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
		["end"] = {start = 10, stop = 10, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 12, stop = 12, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 11, stop = 11, speed = 0, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)

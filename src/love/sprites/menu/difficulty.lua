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
	love.graphics.newImage(graphics.imagePath("menu/campaign_menu_UI_assets")),
    	-- Automatically generated from campaign_menu_UI_assets.xml
	{
		{x = 74, y = 0, width = 196, height = 65, offsetX = 0, offsetY = 0, offsetWidth = 196, offsetHeight = 65}, -- 1: EASY0000
		{x = 0, y = 0, width = 73, height = 41, offsetX = 0, offsetY = 0, offsetWidth = 211, offsetHeight = 67}, -- 2: GAY0000
		{x = 0, y = 0, width = 1, height = 1, offsetX = 0, offsetY = 0, offsetWidth = 308, offsetHeight = 67} -- 3: None
	},
    {
        ["easy"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
        ["normal"] = {start = 3, stop = 3, speed = 24, offsetX = -8, offsetY = 0},
        ["hard"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
        ["gay"] = {start = 2, stop = 2, speed = 24, offsetX = -64, offsetY = -13},
        ["arrow left"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
        ["arrow left confirm"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
        ["arrow right"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
        ["arrow right confirm"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
        ["lock"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0}
    },
    "normal",
    true
)
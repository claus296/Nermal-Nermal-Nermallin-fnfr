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

local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		week = 2

		curEnemy = "boobs"
		curPlayer = "boyfriend"

		house = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermal/house")))

		house.sizeX, house.sizeY = 1.8

		enemy = love.filesystem.load("sprites/nermal/boobs.lua")()
		girlfriend = love.filesystem.load("sprites/nermal/gfNoSpeaker.lua")()

        girlfriend.x, girlfriend.y = -400, 30
        enemy.x, enemy.y = -680, 360
		enemy.sizeX, enemy.sizeY =  1.1
        boyfriend.x, boyfriend.y = -160, 440

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {255,255,255}		

		enemyIcon:animate("pico", false)

		self:load()
	end,

	load = function(self)
		weeks:load()

		inst = love.audio.newSource("songs/hi/inst.ogg", "stream")
		voices = love.audio.newSource("songs/hi/voices.ogg", "stream")

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes(love.filesystem.load("songs/hi/hi-hi.lua")())
	end,

	update = function(self, dt)
		weeks:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "pico" then
				enemyIcon:animate("pico losing", false)
			end
		else
			if enemyIcon:getAnimName() == "pico losing" then
				enemyIcon:animate("pico", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 1 then
				song = song + 1

				self:load()
			else
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.switch(menu)

						status.setLoading(false)
					end
				)
			end
		end
		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			house:draw()

			girlfriend:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()

			weeks:drawRating(0.9)
		love.graphics.pop()

		weeks:drawHealthBar()
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function(self)
		house = nil

		weeks:leave()
	end
}

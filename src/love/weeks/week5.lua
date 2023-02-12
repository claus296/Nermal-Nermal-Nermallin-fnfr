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

		week = 5

		curEnemy = "huh"
		curPlayer = "boyfriend"

		enemy = girlfriend

		garffunko = graphics.newImage(love.graphics.newImage(graphics.imagePath("garffunko")))

		garffunko.sizeX, garffunko.sizeY = 2.1
		garffunko.x, garffunko.y = 0, 100

        girlfriend.x, girlfriend.y = -400, 30
        enemy.x, enemy.y = -280, 360
		enemy.sizeX, enemy.sizeY =  1.1
        boyfriend.x, boyfriend.y = -160, 440

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {175,102,206}		

		enemyIcon:animate("daddy dearest", false)

		self:load()
	end,

	load = function(self)
		weeks:load()

		inst = love.audio.newSource("songs/popout/inst.ogg", "stream")
		voices = love.audio.newSource("songs/popout/voices.ogg", "stream")

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes(love.filesystem.load("songs/popout/popout-funkd.lua")())
	end,

	update = function(self, dt)
		weeks:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				enemyIcon:animate("daddy dearest losing", false)
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				enemyIcon:animate("daddy dearest", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					Gamestate.switch(menu)

					status.setLoading(false)
				end
			)
		end
		if not jumpIn then
			weeks:updateUI(dt)
		end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)


		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()

		garffunko:draw()

			weeks:drawRating(0.9)
		love.graphics.pop()
		if paused then
			weeks:drawHealthBar()
		end
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function(self)
		garffunko = nil

		weeks:leave()
	end
}

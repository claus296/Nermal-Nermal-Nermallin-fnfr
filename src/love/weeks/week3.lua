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
		weeksSpecialNote:enter()
		fading1 = 0
		fading2 = 0

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		week = 3

		curEnemy = "boxNermal"
		curPlayer = "boyfriend"

		enemy = love.filesystem.load("sprites/nermal/boxnermal.lua")()

		nermBlock = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermBlock")))
		nermBlock.sizeX, nermBlock.sizeY = 1.3, 0.2
		nermBlock.x, nermBlock.y = 630, 700
		nermBlock2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermBlock")))
		nermBlock2.sizeX, nermBlock2.sizeY = 1.3, -0.2
		nermBlock2.x, nermBlock2.y = 630, 50
		garfjumpscare = graphics.newImage(love.graphics.newImage(graphics.imagePath("jumpscare")))
		garfjumpscare.x, garfjumpscare.y = 600, 350
		garfjumpscare.sizeY, garfjumpscare.sizeX = 1, 1.4

        girlfriend.x, girlfriend.y = -400, 30
        enemy.x, enemy.y = -280, 360
		enemy.sizeX, enemy.sizeY =  1.5
        boyfriend.x, boyfriend.y = -160, 440

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {175,102,206}		

		enemyIcon:animate("daddy dearest", false)

		self:load()
	end,

	load = function(self)
		weeksSpecialNote:load()

		inst = love.audio.newSource("songs/cubic-calamity/inst.ogg", "stream")
		voices = love.audio.newSource("songs/cubic-calamity/inst.ogg", "stream")

		self:initUI()

		weeksSpecialNote:setupCountdown()
	end,

	initUI = function(self)
		weeksSpecialNote:initUI()

		weeksSpecialNote:generateNotes(love.filesystem.load("songs/cubic-calamity/cubic-calamity-gay.lua")())
	end,

	update = function(self, dt)
		weeksSpecialNote:update(dt)

		delta = love.timer.getDelta()

		if musicTime >= 29500 then
			enemy.x, enemy.y = love.math.random(-280,-180), love.math.random(360,460)
		end
		if musicTime >= 29700 then
			love.event.quit()
		end

		if musicTime <= 29000 then
			if enemy:getAnimName() ~= "idle" then
				enemy.x, enemy.y = love.math.random(-280,-180), love.math.random(360,460) -- funny screen shake
			else
				enemy.x, enemy.y = -280, 360
			end
		end

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
			weeksSpecialNote:updateUI(dt)
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

			if musicTime >= 3000 then
				graphics.setColor(1, 1, 1, fading1)
				if fading1 < 1 then fading1 = fading1 + 1 * delta end 
				enemy:draw()
			end

		love.graphics.pop()

			weeksSpecialNote:drawRating(0.9)
		love.graphics.pop()

		if paused then
			weeksSpecialNote:drawHealthBar()
		end
		if not paused then
			weeksSpecialNote:drawUI()
		end

		if musicTime >= 14483.8709677419 then
			fading2 = fading2 + 0.015
		end

		graphics.setColor(1, 1, 1)

		if block then
			if not paused then
				nermBlock:draw()
				nermBlock2:draw()
			end
		end
		if jumpscare then
			graphics.setColor(1, 1, 1, fading)
			if fading > 0 then fading = fading - 1 * delta end 
			garfjumpscare:draw()
		end
	end,

	leave = function(self)
		nermBlock = nil
		nermBlock2 = nil
		garfjumpscare = nil
		fading1 = 0
		fading2 = 0

		weeksSpecialNote:leave()
	end
}

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

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		week = 6

		house = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermal/house")))

		house.sizeX, house.sizeY = 1.8

		nermBlock = graphics.newImage(love.graphics.newImage(graphics.imagePath("garfBlock")))

		nermBlock.sizeX, nermBlock.sizeY = 1.3, 0.2
		nermBlock.x, nermBlock.y = 630, 700

		nermBlock2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("garfBlock")))

		nermBlock2.sizeX, nermBlock2.sizeY = 1.3, -0.2
		nermBlock2.x, nermBlock2.y = 630, 50

		garfjumpscare = graphics.newImage(love.graphics.newImage(graphics.imagePath("jumpscare")))

		garfjumpscare.x, garfjumpscare.y = 600, 350

		garfjumpscare.sizeY, garfjumpscare.sizeX = 1, 1.4

		enemy = love.filesystem.load("sprites/nermal/garfield.lua")()
		boyfriend = love.filesystem.load("sprites/nermal/jon.lua")()
		girlfriend = love.filesystem.load("sprites/nermal/gfNoSpeaker.lua")()

        girlfriend.x, girlfriend.y = -400, 30
        enemy.x, enemy.y = -680, 360
		enemy.sizeX, enemy.sizeY =  1.1
        boyfriend.x, boyfriend.y = -160, 140
		boyfriend.sizeX = -1

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {255,153,51}		

		healthBarColorPlayer = {171,171,171}		

		enemyIcon:animate("boyfriend (old)", false)

		boyfriendIcon:animate("unknown", false)

		self:load()
	end,

	load = function(self)
		weeksSpecialNote:load()

		inst = love.audio.newSource("songs/abuse-jonmix/inst.ogg", "stream")
		voices = love.audio.newSource("songs/abuse-jonmix/inst.ogg", "stream")

		self:initUI()

		weeksSpecialNote:setupCountdown()
	end,

	initUI = function(self)
		weeksSpecialNote:initUI()

		weeksSpecialNote:generateNotes(love.filesystem.load("songs/abuse-jonmix/abuse-jonmix-easy.lua")())
	end,

	update = function(self, dt)
		weeksSpecialNote:update(dt)

		delta = love.timer.getDelta()

		if health >= 80 then
			if enemyIcon:getAnimName() == "boyfriend (old)" then
				enemyIcon:animate("boyfriend losing (old)", false)
			end
		else
			if enemyIcon:getAnimName() == "boyfriend losing (old)" then
				enemyIcon:animate("boyfriend (old)", false)
			end
		end
		if health > 20 and boyfriendIcon:getAnimName() == "unknown losing" then
			boyfriendIcon:animate("unknown", false)
		elseif health <= 20 and boyfriendIcon:getAnimName() == "unknown" then
			boyfriendIcon:animate("unknown losing", false)
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
		weeksSpecialNote:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			house:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()

			weeksSpecialNote:drawRating(0.9)
		love.graphics.pop()

		weeksSpecialNote:drawHealthBar()
		if not paused then
			weeksSpecialNote:drawUI()
		end
		if block then
			if not paused then
				nermBlock:draw()
				nermBlock2:draw()
			end
		end
		if jumpscare then
			if not paused then
				graphics.setColor(1, 1, 1, fading)
				if fading > 0 then fading = fading - 1 * delta end 
				garfjumpscare:draw()
			end
		end
	end,

	leave = function(self)
		house = nil
		nermBlock = nil
		nermBlock2 = nil
		garfjumpscare = nil

		weeksSpecialNote:leave()
	end
}

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

		week = 4

		curEnemy = "ourpleGuy"
		curPlayer = "nermalOurple"

		ourpleBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("ourple/ourpleBG")))

		ourpleBG.x, ourpleBG.y = -300, 400
		ourpleBG.sizeX, ourpleBG.sizeY = 1.2

		scanlines = graphics.newImage(love.graphics.newImage(graphics.imagePath("ourple/scanline")))

		scanlines.sizeX, scanlines.sizeY = 2
		scanlines.x , scanlines.y = 500, 200

		enemy = love.filesystem.load("sprites/ourple/ourple.lua")()
		girlfriend = love.filesystem.load("sprites/ourple/garf-ourple.lua")()
		boyfriend = love.filesystem.load("sprites/ourple/nerm-ourple.lua")()

        girlfriend.x, girlfriend.y = -300, 330
        enemy.x, enemy.y = -680, 360
        boyfriend.x, boyfriend.y = 60, 400

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {136,87,171}
		
		healthBarColorPlayer = {128,128,128}		

		enemyIcon:animate("skid and pump", false)

		boyfriendIcon:animate("tankman", false)

		self:load()
	end,

	load = function(self)
		weeksSpecialNote:load()

		inst = love.audio.newSource("songs/cutes/inst.ogg", "stream")
		voices = love.audio.newSource("songs/cutes/voices.ogg", "stream")

		self:initUI()

		weeksSpecialNote:setupCountdown()
	end,

	initUI = function(self)
		weeksSpecialNote:initUI()

		weeksSpecialNote:generateNotes(love.filesystem.load("songs/cutes/cutes-ourple.lua")())
	end,

	update = function(self, dt)
		weeksSpecialNote:update(dt)
		
		--if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 30000 / bpm) < 100 then
			--if enemy.sizeX == 1 then
				--enemy.sizeX = -1
			--elseif enemy.sizeX == -1 then
				--enemy.sizeX = 1
			--end
		--end

		if musicTime >= 54666.6666666667 then
			if musicTime <= 54666.6666666667 + 50 then
				girlfriend:animate("fall", false)
			end
		end

		if health >= 80 then
			if enemyIcon:getAnimName() == "skid and pump" then
				enemyIcon:animate("skid and pump losing", false)
			end
		else
			if enemyIcon:getAnimName() == "skid and pump losing" then
				enemyIcon:animate("skid and pump", false)
			end
		end

		if health > 20 and boyfriendIcon:getAnimName() == "tankman losing" then
			boyfriendIcon:animate("tankman", false)
		elseif health <= 20 and boyfriendIcon:getAnimName() == "tankman" then
			boyfriendIcon:animate("tankman losing", false)
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

			ourpleBG:draw()

		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

			if musicTime >= 54666.6666666667 then
				girlfriend:draw()
			end
			boyfriend:draw()
			enemy:draw()

		love.graphics.pop()

			weeksSpecialNote:drawRating(0.9)
		love.graphics.pop()

		weeksSpecialNote:drawHealthBar()
		if not paused then
			weeksSpecialNote:drawUI()
			scanlines:draw()
		end
	end,

	leave = function(self)
		ourpleBG = nil
		scanlines = nil

		weeksSpecialNote:leave()
	end
}

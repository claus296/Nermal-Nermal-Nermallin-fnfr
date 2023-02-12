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
		fadingWarn = 0
		fadingWarn2 = 0
		fadingWarnAbuse = 0
		fadingWarnAbuse2 = 0

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		week = 1

		curEnemy = "nermal"
		curPlayer = "boyfriend"

		if song == 3 then
			jumpIn = true
			didCountdown = false
			musicPos = 0
		end

		nermBlock = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermBlock")))
		nermBlock.sizeX, nermBlock.sizeY = 1.3, 0.2
		nermBlock.x, nermBlock.y = 630, 700

		nermBlock2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermBlock")))
		nermBlock2.sizeX, nermBlock2.sizeY = 1.3, -0.2
		nermBlock2.x, nermBlock2.y = 630, 50

		garfjumpscare = graphics.newImage(love.graphics.newImage(graphics.imagePath("jumpscare")))
		garfjumpscare.x, garfjumpscare.y = 600, 350
		garfjumpscare.sizeY, garfjumpscare.sizeX = 1, 1.4

		house = graphics.newImage(love.graphics.newImage(graphics.imagePath("nermal/house")))
		house.sizeX, house.sizeY = 1.8

		nermNoteWarn = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/nermnoteWarn")))
		nermNoteWarn.x, nermNoteWarn.y = 1000, 400
		nermNoteWarn.sizeX, nermNoteWarn.sizeY = 2

		nermWarnText = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/nermWarnText")))
		nermWarnText.x, nermWarnText.y = 400, 400
		nermWarnText.sizeX, nermWarnText.sizeY = 1.3

		gayWarn = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/gayWarn")))
		gayWarn.x, gayWarn.y = 600, 600
		gayWarn.sizeX, gayWarn.sizeY = 0.7

		garfNoteWarn = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/garfnoteWarn")))
		garfNoteWarn.x, garfNoteWarn.y = 1150, 600
		garfNoteWarn.sizeX, garfNoteWarn.sizeY = 1.1

		garfWarnText = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/garfWarnText")))
		garfWarnText.x, garfWarnText.y = 400, 300
		garfWarnText.sizeX, garfWarnText.sizeY = 1.3

		arrow = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/arrow")))
		arrow.x, arrow.y = 950, 600
		arrow.sizeX, arrow.sizeY = 0.5

		jumpNoteWarn = graphics.newImage(love.graphics.newImage(graphics.imagePath("mech-warn/jumpNoteWarn")))
		jumpNoteWarn.x, jumpNoteWarn.y = 1000, 300
		jumpNoteWarn.sizeX, jumpNoteWarn.sizeY = 2

		enemy = love.filesystem.load("sprites/nermal/nermal.lua")()
		garfjump = love.filesystem.load("sprites/nermal/jumpIn.lua")()
		ouchie = love.filesystem.load("sprites/nermal/ouchie.lua")()
		girlfriend = love.filesystem.load("sprites/nermal/gfNoSpeaker.lua")()

        girlfriend.x, girlfriend.y = -400, 30
        enemy.x, enemy.y = -680, 420
        boyfriend.x, boyfriend.y = -160, 440
        ouchie.x, ouchie.y = -160, 440
		garfjump.sizeX, garfjump.sizeY = 2
		garfjump.x, garfjump.y = -650, -630

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {161,161,161}	

		healthBarColorPlayer = {49,176,209}

		enemyIcon:animate("boyfriend", false)

		enemyIcon:animate("daddy dearest", false)

		self:load()
	end,

	load = function(self)
		weeksSpecialNote:load()

		if song == 3 then
			inst = love.audio.newSource("songs/abuse-" .. difficulty .. "/inst.ogg", "stream")
			voices = love.audio.newSource("songs/abuse-" .. difficulty .. "/voices.ogg", "stream")

			curEnemy = "garfield"
			curPlayer = "nermalAngry"

			healthBarColorEnemy = {255,153,51}	

			healthBarColorPlayer = {161,161,161}		

			enemyIcon:animate("boyfriend (old)", false)

			boyfriendIcon:animate("daddy dearest", false)

			nermNoteWarn.x, nermNoteWarn.y = 750, 600
			nermNoteWarn.sizeX, nermNoteWarn.sizeY = 1.1

			nermBlock = graphics.newImage(love.graphics.newImage(graphics.imagePath("garfBlock")))

			nermBlock.sizeX, nermBlock.sizeY = 1.3, 0.2
			nermBlock.x, nermBlock.y = 630, 700

			nermBlock2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("garfBlock")))

			nermBlock2.sizeX, nermBlock2.sizeY = 1.3, -0.2
			nermBlock2.x, nermBlock2.y = 630, 50

			enemy = love.filesystem.load("sprites/nermal/garfield.lua")()

			enemy.x, enemy.y = -780, 300

			boyfriend = love.filesystem.load("sprites/nermal/nermAngry.lua")()

			boyfriend.x, boyfriend.y = 30, 370
			boyfriend.sizeX = -1
			
			fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")()

			fakeBoyfriend.x, fakeBoyfriend.y = boyfriend.x, boyfriend.y

			jumpIn = true
			garfjump:animate("anim", false)
			Timer.after(0.912, function()
				jumpIn = false
				weeksSpecialNote:setupCountdown()
			end)
		elseif song == 2 then
			inst = love.audio.newSource("songs/xd-" .. difficulty .. "/inst.ogg", "stream")
			voices = love.audio.newSource("songs/xd-" .. difficulty .. "/voices.ogg", "stream")

			curEnemy = "nermalAngry"
			curPlayer = "bfShot"

			enemy = love.filesystem.load("sprites/nermal/nermAngry.lua")()

			enemy.x, enemy.y = -810, 350

			boyfriend = love.filesystem.load("sprites/nermal/bf'shot.lua")()

			boyfriend.x, boyfriend.y = -160, 440
		else
			inst = love.audio.newSource("songs/nermal-" .. difficulty .. "/inst.ogg", "stream")
			voices = love.audio.newSource("songs/nermal-" .. difficulty .. "/voices.ogg", "stream")
		end

		self:initUI()
		if not jumpIn then
			weeksSpecialNote:setupCountdown()
		end
	end,

	initUI = function(self)
		weeksSpecialNote:initUI()

		if song == 3 then
			weeksSpecialNote:generateNotes(love.filesystem.load("songs/abuse-" .. difficulty .. "/abuse-" .. difficulty .. ".lua")())
		elseif song == 2 then
			weeksSpecialNote:generateNotes(love.filesystem.load("songs/xd-" .. difficulty .. "/xd-" .. difficulty .. ".lua")())
		else
			weeksSpecialNote:generateNotes(love.filesystem.load("songs/nermal-" .. difficulty .. "/nermal-" .. difficulty .. ".lua")())
		end
	end,

	update = function(self, dt)
		weeksSpecialNote:update(dt)
		ouchie:update(dt)
		if jumpIn then
			if song == 3 then
				garfjump:update(dt)
			end
		end

		delta = love.timer.getDelta()
		if songDifficulty == 2 then
			if song == 1 then
				if musicTime >= 27517.2413793104 then
					if musicTime <= 27517.2413793104 + 50 then
						boyfriend:animate("hey", false)
					end
				end
				if musicTime >= 27724.1379310345 then
					if musicTime <= 27724.1379310345 + 50 then
						boyfriend:animate("hey", false)
					end
				end
				if musicTime >= 82137.9310344828 then
					if musicTime <= 82137.9310344828 + 50 then
						boyfriend:animate("hey", false)
					end
				end
				if musicTime >= 82344.8275862069 then
					if musicTime <= 82344.8275862069 + 50 then
						boyfriend:animate("hey", false)
					end
				end
			end
		end

		if song == 1 then
			if musicTime >= 84000 then
				if musicTime <= 84000 + 50 then
					enemy:animate("die", false)
				end
			end
			if musicTime >= 84413 then
				if musicTime <= 84413 + 50 then
					ouchie:animate("anim", false)
				end
			end
		end

		if song == 3 then
			if health >= 80 then
				if enemyIcon:getAnimName() == "boyfriend (old)" then
					enemyIcon:animate("boyfriend losing (old)", false)
				end
			else
				if enemyIcon:getAnimName() == "boyfriend losing (old)" then
					enemyIcon:animate("boyfriend (old)", false)
				end
			end
			if health > 20 and boyfriendIcon:getAnimName() == "daddy dearest losing" then
				boyfriendIcon:animate("daddy dearest", false)
			elseif health <= 20 and boyfriendIcon:getAnimName() == "daddy dearest" then
				boyfriendIcon:animate("daddy dearest losing", false)
			end
		else
			if health >= 80 then
				if enemyIcon:getAnimName() == "daddy dearest" then
					enemyIcon:animate("daddy dearest losing", false)
				end
			else
				if enemyIcon:getAnimName() == "daddy dearest losing" then
					enemyIcon:animate("daddy dearest", false)
				end
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused and not jumpIn then
			if storyMode and song < 3 then
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

			house:draw()

			if song ~= 3 then
				girlfriend:draw()
			end
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			if not jumpIn then
				enemy:draw()
				if song == 1 then
					if musicTime <= 84413 then
						boyfriend:draw()
					end
					if musicTime >= 84413 then
						ouchie:draw()
					end
				else
					boyfriend:draw()
				end
			end
			if jumpIn then
				garfjump:draw()
			end
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()

			weeksSpecialNote:drawRating(0.9)
		love.graphics.pop()

		weeksSpecialNote:drawHealthBar()
		if not paused and not jumpIn then
			weeksSpecialNote:drawUI()
		end
		if storyMode and not died and song == 3 then
			if musicTime >= 10 then
				if musicTime <= 300 then
					fadingWarnAbuse = fadingWarnAbuse + 0.035
				end
			end
			if musicTime >= 3000 then
				fadingWarnAbuse = fadingWarnAbuse - 0.035
			end
			graphics.setColor(0, 0, 0, fadingWarnAbuse)
			love.graphics.rectangle("fill", 0, 0, 999999, 999999)

			graphics.setColor(1, 1, 1)

			if musicTime >= 10 then
				fadingWarnAbuse2 = fadingWarnAbuse2 + 0.035
			end
			graphics.setColor(1, 1, 1, fadingWarnAbuse2)
			if musicTime >= 3800 then
				fadingWarnAbuse = fadingWarnAbuse - fadingWarnAbuse
				fadingWarnAbuse2 = fadingWarnAbuse2 - fadingWarnAbuse2
			end
			if musicTime >= 10 then
				if musicTime <= 3000 then
					jumpNoteWarn:draw()
					garfNoteWarn:draw()
					garfWarnText:draw()
					arrow:draw()
					nermNoteWarn:draw()
				end
			end
		elseif storyMode and not died and song == 1 then
			if musicTime >= 10 then
				if musicTime <= 1100 then
					fadingWarn = fadingWarn + 1 * love.timer.getDelta()
				end
			end
			if musicTime >= 3000 then
				fadingWarn = fadingWarn - 2.3 * love.timer.getDelta()
			end
			graphics.setColor(0, 0, 0, fadingWarn)
			print(fadingWarn)
			love.graphics.rectangle("fill", 0, 0, 999999, 999999)

			graphics.setColor(1, 1, 1)

			if musicTime >= 10 then
				fadingWarn2 = fadingWarn2 + 1 * love.timer.getDelta()
			end
			if musicTime >= 3800 then
				fadingWarn2 = fadingWarn2 - 1 * love.timer.getDelta()
			end
			graphics.setColor(1, 1, 1, fadingWarn2)
			if musicTime >= 10 then
				if musicTime <= 3000 then
					if songDifficulty == 2 then
						gayWarn:draw()
					end
					nermNoteWarn:draw()
					nermWarnText:draw()
				end
			end
		end

		graphics.setColor(1, 1, 1, 1)

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
		if paused then
			weeksSpecialNote:drawHealthBar()
		end

	end,

	leave = function(self)
		house = nil
		nermBlock = nil
		nermBlock2 = nil
		garfjumpscare = nil
		ouchie = nil
		garfjump = nil
		garfWarnText = nil
		garfNoteWarn = nil
		jumpNoteWarn = nil
		nermNoteWarn = nil
		nermWarnText = nil
		arrow = nil
		song = 1
		fadingWarnAbuse = fadingWarnAbuse - fadingWarnAbuse
		fadingWarnAbuse2 = fadingWarnAbuse2 - fadingWarnAbuse2
		fadingWarn = fadingWarn - fadingWarn
		fadingWarn2 = fadingWarn2 - fadingWarn2

		weeksSpecialNote:leave()
	end
}

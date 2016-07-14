-- This file shouldn't be changed.
-- Any gameplay elements should be placed in game.lua
local KeyboardProcessor = require "treagine.input.keyboardprocessor"

local Game = require "game"
local mainGame = Game()

function love.load(arg)
	-- live console output
	io.stdout:setvbuf("no")
	-- attach debugger
	if arg[#arg] == "-debug" then require("mobdebug").start() end

	mainGame:load(arg)
end

function love.draw()
	mainGame:update(love.timer.getDelta())
	KeyboardProcessor.update()
end

function love.resize(w, h)
	if mainGame.resize then mainGame:resize(w, h) end
end

function love.keypressed(key, scancode, isrepeat)
	KeyboardProcessor.keyPressed(scancode)
end

function love.keyreleased(key, scancode, isrepeat)
	KeyboardProcessor.keyReleased(scancode)
end


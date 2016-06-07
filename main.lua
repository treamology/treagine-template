-- This file shouldn't be changed.
-- Any gameplay elements should be placed in game.lua

local Game = require "game"
local mainGame = Game()

function love.load(arg)
	mainGame:load(arg)
end

function love.draw()
	mainGame:update(love.timer.getDelta())
end

function love.resize(w, h)
	if mainGame.resize then mainGame:resize(w, h) end
end
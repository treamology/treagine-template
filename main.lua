-- This file shouldn't be changed.
-- Any gameplay elements should be placed in game.lua

local Game = require "game"
local mainGame = Game()

function love.load(arg)
	mainGame:load()
end

function love.draw()
	mainGame:update(love.timer.getDelta())
end

function love.resize()

end
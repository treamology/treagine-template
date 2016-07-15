local vector = require "treagine.lib.vector"

local GameManager = require "treagine.game.gamemanager"
local Screen = require "treagine.game.screen"
local Entity = require "treagine.game.entity"

local Game = GameManager:extend("My Game") -- your game's name

function Game:init()
	Game.super.init(self, self.name)

	self.currentScreen = Screen()
end

function Game:load()
	Game.super.load(self)

	love.window.setTitle(self.name)

	local box = Entity()
	box.drawMode = "fill"
	box.size = vector(100, 100)
	box:setCenter(self.currentScreen.canvas:getWidth() / 2, self.currentScreen.canvas:getHeight() / 2)

	self.currentScreen.world:addEntity(box)
end

function Game:update(dt)
	Game.super.update(self, dt)
end

return Game
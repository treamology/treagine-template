local GameManager = require "treagine.game.gamemanager"

local Game = GameManager:extend("My Game") -- your game's name

function Game:load()
	Game.super.load(self)

	love.window.setTitle(self.name)
end

function Game:update(dt)
	Game.super.update(self, dt)
end

return Game
class IndexController < ApplicationController
	
	def index
		@games = Game.all
	end
	
end

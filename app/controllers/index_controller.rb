class IndexController < ApplicationController
	
	def index
		@games = Game.all
	end
	
	def addscores
		
	end
	
end

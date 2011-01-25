class Score < ActiveRecord::Base
	belongs_to :nickname
	belongs_to :game
	
	def js_json(hash = { })
		output = { :nickname => nickname.name, :score => value }
#		(hash.include(:include_gametype) or hash.include("include_gametype")) ? output.merge!({:game => game.js_json })
		output
	end
end

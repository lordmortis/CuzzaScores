class Score < ActiveRecord::Base
	belongs_to :nickname
	belongs_to :game
end

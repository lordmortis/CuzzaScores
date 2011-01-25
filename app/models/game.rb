class Game < ActiveRecord::Base
	has_many :scores
	
	def js_json
		return { :name => self.name, :id => self.id }
	end
end

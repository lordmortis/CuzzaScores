class Game < ActiveRecord::Base
	has_many :scores, :dependent => :destroy

	def score_table
		if cumulative
			values = scores.joins(:nickname).group(:name).sum(:value)
		else
			values = scores.joins(:nickname).group(:name).maximum(:value)
		end
		
		output = Array.new
		values.keys.each do |name|
			output << {:name => name, :score => values[name]}
		end
		
		output.sort! {|a,b| b[:score] <=> a[:score]}
		
		output
	end
	
	def js_json
		return { :name => self.name, :id => self.id }
	end
end

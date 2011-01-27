class Nickname < ActiveRecord::Base
	has_many :scores, :dependent => :destroy
end

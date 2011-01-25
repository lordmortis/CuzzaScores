class User < ActiveRecord::Base
	has_many :user_roles
	has_many :roles, :through => :user_roles

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
#:validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

	def role_symbols
		roles.map do |role|
			role.name.underscore.to_sym
		end
	end
	
end

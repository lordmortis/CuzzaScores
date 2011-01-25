class RegistrationsController < Devise::RegistrationsController
	def new
		redirect_to :action => "index", :controller => "index"
	end

	def create
		redirect_to :action => "index", :controller => "index"
	end

  def update
		super
  end
end
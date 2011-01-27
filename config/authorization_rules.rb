authorization do
  role :guest do
		has_permission_on :index, :to => :index
		has_permission_on :scores, :to => :show, :to => :index
		has_permission_on :games, :to => :show
		has_permission_on [:content_blocks], :to => [:show, :index]
  end
	
	role :member do
		has_permission_on [:users], :to => [:update, :show, :destroy]		
	end

	role :proctor do
		has_permission_on :index, :to => [:index, :addscores]
		has_permission_on :nicknames, :to => [:new, :index, :show, :create, :edit, :update]
		has_permission_on :scores, :to => [:new, :index, :show, :create, :edit, :update]
	end

	role :admin do
		has_permission_on :index, :to => [:index, :addscores]
		has_permission_on :games, :to => [:new, :index, :show, :create, :edit, :update, :destroy]
		has_permission_on :nicknames, :to => [:new, :index, :show, :create, :edit, :update, :destroy]
		has_permission_on :scores, :to => [:new, :index, :show, :create, :edit, :update, :destroy]		
		has_permission_on [:content_blocks], :to => [:new, :index, :create, :edit, :update, :show, :destroy, :preview, :publish, :unpublish]
		has_permission_on [:content_tags], :to => [:new, :index, :create, :edit, :update, :show, :destroy]
		has_permission_on [:content_pages], :to => [:new, :index, :create, :edit, :update, :show, :destroy]
		has_permission_on [:users], :to => [:new, :index, :create, :edit, :update, :show, :destroy]
	end
end

#privileges do
  # default privilege hierarchies to facilitate RESTful Rails apps
#  privilege :manage, :includes => [:create, :read, :update, :delete]
#  privilege :read, :includes => [:index, :show]
#  privilege :create, :includes => :new
#  privilege :update, :includes => :edit
#  privilege :delete, :includes => :destroy
#end
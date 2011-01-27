Scoreboard::Application.routes.draw do
	devise_for :users, :controllers => {:registrations => "registrations"}	

  resources :scores

  resources :games

  resources :nicknames

  root :to => "index#index"

	match 'addscores' => 'index#addscores'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

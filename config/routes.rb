Rails.application.routes.draw do

  devise_for :users
	root 'staticpages#home'

	authenticate :user do
    resources :bots do
      resources :questions
    end
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

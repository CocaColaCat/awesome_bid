Rails.application.routes.draw do
  
  resources :products
  devise_for :users

  devise_scope :user do
  	root to: "devise/sessions#new"
	end
end

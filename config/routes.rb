Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	  resources :articles do
	  resources :comments
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'atricles/index'
 root 'articles#index'
end

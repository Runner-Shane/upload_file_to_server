Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # the code below is used to create new routes for the posts controller
  resources :posts
  root to: 'posts#index' 
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/add_appearance', to: 'users#add_appearance'
  post '/users/success', to: 'users#success'
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, only: [:show]
end

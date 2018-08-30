Rails.application.routes.draw do
  root to: 'pages#home'
  get 'play', to: 'pages#play'
  devise_for :users

  resources :political_parties
  resources :users, only: [:show, :edit, :update]
  resources :politicians_scores, only: [:index]

  resources :politicians, only: [ :index, :show ] do
    resources :political_links, only: [ :create, :destroy ]
  end
  resources :leagues do
    resources :league_connections, only: [ :create, :destroy ]
  end

  get '/search_results', to: 'pages#search_results'

end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

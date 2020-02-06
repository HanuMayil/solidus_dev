Rails.application.routes.draw do

  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
  get 'my_friends', to: "spree_users#my_friends"
  resources :spree_users, only: [:show]
  resources :users, only: [:show]
  resources :friendships
  get 'search_friends', to: "spree_users#search"
  post 'add_friend', to: "users#add_friend"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

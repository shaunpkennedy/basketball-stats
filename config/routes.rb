Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :games
  resources :stats
end

Rails.application.routes.draw do
  resources :players do
    resources :teams
  end
  
  resources :teams, only: [] do
    resources :games
  end

  root to: "main#index"
end

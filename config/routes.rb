Rails.application.routes.draw do
  root "habits#index"
  resources :habits
  devise_for :users
end

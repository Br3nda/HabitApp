Rails.application.routes.draw do
#  root to: :habits 
  resources :habits
  devise_for :users
end

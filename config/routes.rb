Rails.application.routes.draw do
  devise_for :users
  root to: 'main#index'
  resources :main, only: [:index]
  resources :products do 
    resources :reviews, except: [:destroy, :update, :edit]
  end 
end
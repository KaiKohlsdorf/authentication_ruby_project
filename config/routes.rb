Rails.application.routes.draw do
  root to: 'main#index'
  resources :main, only: [:index]
  resources :products do 
    resources :reviews, except: [:destroy, :update, :edit]
  end 
end
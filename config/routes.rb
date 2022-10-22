Rails.application.routes.draw do
  resources :products, except: [:destroy] do
    resources :reviews, except: [:destroy]
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    root to: 'products#index'
  end
end

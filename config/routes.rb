Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]

  get "restaurants/:id, to: 'restaurants#show', as: restaurant"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

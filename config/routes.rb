Rails.application.routes.draw do
  root 'home#index'
  get 'home/light_on'
  get 'home/light_off'
  resources :items, only: [:index]
  resources :stocks, only: [:index, :new, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

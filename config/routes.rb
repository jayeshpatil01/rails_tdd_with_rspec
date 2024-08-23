Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'status', to: 'status#index'
  get 'consoles', to: 'consoles#index'
  get 'home', to: 'home#index'
  get 'about', to: 'about#index'
end

Entity::Application.routes.draw do
  root to: 'home#index'

  resources :super_entities

end

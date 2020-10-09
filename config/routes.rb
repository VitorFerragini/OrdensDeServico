Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :ordens_de_servico
  resources :fases
  resources :sistemas
  resources :tipos
  resources :areas
  resources :coordenadorias
  resources :tacs
  resources :tcs
  resources :pas

  root to: "ordens_de_servico#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

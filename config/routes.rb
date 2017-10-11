Rails.application.routes.draw do
  ##to change the way the resources routes show up
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :portfolios

  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  resources :blogs

  root to: 'pages#index'
end

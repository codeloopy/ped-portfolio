Rails.application.routes.draw do

  ##to change the way the resources routes show up
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  devise_for :users
  resources :portfolios

  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#index'
end

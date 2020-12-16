Rails.application.routes.draw do
  get 'goals/create'
  get 'comments/create'
  root to: 'home#index'

  get 'home/index'
  get 'styles/atoms'
  get 'styles/molecules'
  get 'styles/organisms'

  get 'users/new'
  get 'sessions/new'

  resources :users do
    resources :goals
  end

  resources :ideas do
    resources :comments
  end

  get '/account/ideas'

  get '/account', to: 'account#edit'
  patch '/account', to: 'account#update'

  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

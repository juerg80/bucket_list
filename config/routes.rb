Rails.application.routes.draw do
  get 'comments/create'
  root to: 'home#index'

  get 'home/index'
  get 'styles/atoms'
  get 'styles/molecules'
  get 'styles/organisms'

  resources :ideas do
    resources :comments
  end

  get '/account/ideas'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: 'home#index'
  scope '/:locale' do
    get 'goals/create'
    get 'comments/create'
    
    get 'home/index'
    get 'styles/atoms'
    get 'styles/molecules'
    get 'styles/organisms'

    get 'users/new'
    get 'sessions/new'

    resources :users, only: [:new, :create, :edit, :update] do
      resources :goals
    end

    resources :ideas do
      resources :comments
      resources :photos
    end

    get '/account/ideas'

    get '/account', to: 'account#edit'
    patch '/account', to: 'account#update'

    get '/account/goals', to: 'account#goals', as: 'account_goals'

    resources :sessions, only: [:new, :create, :destroy]
  end
end

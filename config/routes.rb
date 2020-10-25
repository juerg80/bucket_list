Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'
  get 'styles/atoms'
  get 'styles/molecules'
  get 'styles/organisms'
  get 'ideas/index'
  get 'ideas/new'
  post 'ideas/create'
  get '/account/ideas'

  get   'ideas/:id/edit', to: 'ideas#edit', as: 'edit_idea'
  patch 'ideas/:id',      to: 'ideas#update', as: 'idea'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

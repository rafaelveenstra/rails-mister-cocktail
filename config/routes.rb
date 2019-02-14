Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/edit'
  # get 'cocktails/new'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: %i[index new create]
  end
  resources :doses, only: %i[destroy]
end

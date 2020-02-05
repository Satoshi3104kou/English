Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'

  devise_for :users
  root to: 'words#index'
  resources :words, except: :index do
    collection do
      post 'search'
    end
  end
  # get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


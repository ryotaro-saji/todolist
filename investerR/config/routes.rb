Rails.application.routes.draw do
  root to: 'toppages#index'
  
  resources :manners, only:[:new, :create, :edit, :update]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]do
     member do
      get :followings
      get :followers
      get :posts
      
    end
  end
  resources :posts, only: [:create, :destroy, :index ,:new]
  resources :relationships, only: [:create, :destroy]
end

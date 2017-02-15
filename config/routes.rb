Rails.application.routes.draw do
  root 'posts#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :users, :except => [:index] do
    resources :posts
  end

  resources :posts, :only => [:index, :show] do
    resources :comments
  end
end

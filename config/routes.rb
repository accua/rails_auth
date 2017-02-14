Rails.application.routes.draw do

  resources :user, :except => [:index] do
    resources :posts
  end

  resources :posts, :only => [:index, :show] do
    resources :comments
  end
end

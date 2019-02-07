Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'

  resources :post_images, only:[:new, :create, :index, :show] do
    resource :post_comments, only:[:create, :destroy]
    resource :favorites, only:[:create, :destroy]
  end
end

Rails.application.routes.draw do
 root :to => 'links#index'
 resources :users
 resources :links
 resources :votes, :except => [:index, :edit, :update, :destroy]
end

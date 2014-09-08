Rails.application.routes.draw do
 root :to => 'links#index'
 resources :users
 resources :links
end

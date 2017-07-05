Rails.application.routes.draw do
  devise_for :users

   root :to => 'users#index'


   resources :users do
     resources :images do
       resources :tags
     end
   end
 end

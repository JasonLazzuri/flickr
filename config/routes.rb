Rails.application.routes.draw do

  devise_for :users

  get 'images/index' => 'images#index'

  root 'images#index'



  get 'tags/edit'

  get 'tags/index'

  get 'tags/new'

  get 'images/show'

  get 'images/edit'



  get 'images/new'

  get 'users/show'

  get 'users/edit'

  get 'users/index'

  get 'users/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :images do
    resources :tags
  end
end

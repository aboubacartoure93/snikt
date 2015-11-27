Rails.application.routes.draw do
  get 'images/new'

  resources :books do
  	resources :pages, shallow: true do
  		resources :pictures, shallow: true
  	end
  end

  post '/pictures/:id', to: 'pictures#update'
  root 'books#index'
end
 
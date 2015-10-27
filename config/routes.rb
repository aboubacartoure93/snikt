Rails.application.routes.draw do
  resources :books do
  	resources :pages, shallow: true do
  		resources :pictures, shallow: true
  	end
  end
  root 'books#index'
end

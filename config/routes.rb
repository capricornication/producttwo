Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/products_single' => 'products#single'
end

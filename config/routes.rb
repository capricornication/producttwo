Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/products/:id' => 'products#show'

  # get '/products_single' => 'products#single'
  # get '/query' => 'products#query'
  # get '/query/:wildcard' => 'products#url'

  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
end

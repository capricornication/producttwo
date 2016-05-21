class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def single
    @product = Product.first
  end 
end

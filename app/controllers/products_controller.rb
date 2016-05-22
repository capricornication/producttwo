class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
  # def single
  #   @product = Product.first
  # end 

  # def query
  #   @product = params[:message]
  #   @product_message = params[:productmessage]
  # end

  # def url
  #   @message = params[:wildcard]
  # end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image: params[:image]
      )

    redirect_to "/"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.update(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image: params[:image]
      )

    render 'show.html.erb'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to "/"
  end
end

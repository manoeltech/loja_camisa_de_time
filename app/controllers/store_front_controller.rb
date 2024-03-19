class StoreFrontController < ApplicationController
  layout "store_front"
  def index
    @products = Product.all
    @categories = Category.all
  end
end
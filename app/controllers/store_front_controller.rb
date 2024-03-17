class StoreFrontController < ApplicationController
  layout "store_front"
  def index
    @products = Product.all
  end
end
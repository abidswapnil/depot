class StoreController < ApplicationController
  def index
    @products = Product.order(:description)
  end
end

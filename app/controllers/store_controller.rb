class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all   #to display all products.
    @cart = current_cart
  end

end

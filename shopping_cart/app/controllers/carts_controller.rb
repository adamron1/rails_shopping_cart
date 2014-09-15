class CartsController < ApplicationController
  def index
    @cart_contents = Cart.all
  end

  def create

    redirect_to ('/carts')
  end

end

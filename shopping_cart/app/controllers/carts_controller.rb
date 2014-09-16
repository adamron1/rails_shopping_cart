class CartsController < ApplicationController
  def index
    @cart_contents = Cart.all
  end

  def create
    Cart.create(product_id: params[:id])
    params.inspect
  end

  def delete

  end

end

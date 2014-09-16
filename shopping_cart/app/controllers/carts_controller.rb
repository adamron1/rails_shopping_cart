class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart_contents = current_user.carts
    p current_user
    p @cart_contents
  end

  def create
    current_user.carts.create(product_id: params[:product_id])
    redirect_to :back
  end

  def destroy
    Cart.destroy(params[:id])
    redirect_to :back
  end


end

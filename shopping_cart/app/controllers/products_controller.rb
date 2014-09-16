class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.json {render :json => @products}
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render :json => @product}
    end

  end

end

class OrdersController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
  end

  def create
  end

  def confirm
  end

  def item
  end

end

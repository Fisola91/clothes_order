class OrdersController < ApplicationController

  #
  def new
    @product = Product.new
  end

  def create
    @order = order.new(order_params)
  end

  def confirm
  end

  def item
  end

end

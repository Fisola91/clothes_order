class OrdersController < ApplicationController

  #
  def cart
    @product = Product.new

  end

  def create
    @order = order.new(order_params)
    render 'confirm', product_id: product.id
  end

  def confirm
  end

  def item
  end

end

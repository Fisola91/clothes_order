class OrdersController < ApplicationController
  #
  def new
    @order = Order.new

  end
  def create
    @order = order.new(order_params)
    render 'checkout', product_id: product.id
  end

  #EACH ITEM ADDED SHOULD APPEAR
  def checkout
  end

  def item
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end

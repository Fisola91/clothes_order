class OrdersController < ApplicationController
  #

  def create
    @order = order.new(order_params)
    render 'checkout', product_id: product.id
  end

  def checkout
  end

  def item
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end

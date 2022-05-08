class OrdersController < ApplicationController
  #
  def new
    @products = Product.all
    @product = Product.new
  end

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

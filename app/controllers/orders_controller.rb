class OrdersController < ApplicationController
  #
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def discount_percentage
    @discount_percentage = 30
  end

  def create
    @order = order.new(order_params)
    render 'checkout', product_id: product.id
  end

  def counter

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

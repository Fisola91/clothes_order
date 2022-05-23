class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: :index
  before_action :load_cart

  def index
    @products = Product.all

  end



  #def create
    #@order = Order.new
   # @order = order.new(order_params)
   # render 'checkout', product_id: product.id
  #end

  # Add product once to the cart array
  def add_to_cart
    id = Product.find(params[:product_id])
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to cart_path
  end


  def load_cart
    @count = session[:cart].count # This count number of product in the array
    @cart = session[:cart].uniq #This avoids duplicate
  end

  #List of selected items
  def cart
    @carts = @cart.flatten
  end

  # Delete item from the array when item is not needed
  # To be implemented later
  def destroy
    @cart.each do |cart|
      if cart.destroy && @cart.length == 0
        redirect_to products_path
      elsif cart.destroy && @cart.length > 0
        render cart_path
      end
    end
  end

  def discount_percentage
    @discount_percentage = 30
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end

  def initialize_session
    session[:visit_count] ||= 0 # This initialize the visit count on first visit
    session[:cart] ||= []
  end

  def increment_visit_count
    session[:visit_count] += 1 # increment the count with each visit
    @visit_count = session[:visit_count]
  end
end

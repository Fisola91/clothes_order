class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: :index
  before_action :load_cart

  def index
    @products = Product.all

  end

  def cart
    @product = Product.find(params[:product_id])
  end



  #def create
    #@order = Order.new
   # @order = order.new(order_params)
   # render 'checkout', product_id: product.id
  #end

  def add_to_cart
    session[:cart] << session[:cart].count unless session[:cart].include?(product_id)
    redirect_to new_product_path
  end


  def load_cart
    @count = session[:cart].count # This count number of product in the array
    @cart = session[:cart]
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

class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: :index

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    @cart = session[:cart]
    redirect_to products_path
  end

  def discount_percentage
    @discount_percentage = 30
  end

 private

 def initialize_session
  session[:visit_count] ||= 0 # This initialize the visit count on first visit
  session[:cart] ||= []
 end

 def increment_visit_count
  session[:visit_count] += 1 # increment the count with each visit
  @visit_count = session[:visit_count]
 end





end

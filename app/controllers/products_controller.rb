class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: :index
  before_action :load_cart

  def index
    @products = Product.all
  end


  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end


  def load_cart
    # This count number of product in the array
    @count = session[:cart].count
    # When you give find an arrays of numbers, it gives back an aray of object of that type
    @cart = Product.find(session[:cart])
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  private

  def initialize_session
    # This initialize the visit count on first visit and cart
    session[:visit_count] ||= 0
    session[:cart] ||= []
  end

  def increment_visit_count
    # increment the count with each visit
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end
end

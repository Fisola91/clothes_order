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
    @count = session[:cart].count # This count number of product in the array
    @cart = session[:cart] #This avoids duplicate
  end

  #List of selected items
  def cart
    @carts = @cart.flatten
  end

  # Delete item from the array when item is not needed
  # To be implemented later
  #def destroy
    #@cart.each do |cart|
      #if cart.destroy && @cart.length == 0
        #redirect_to products_path
      #elsif cart.destroy && @cart.length > 0
        #render cart_path
      #end
    #end
  #end


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

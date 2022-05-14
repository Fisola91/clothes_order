class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

 private

 def initialize_session
  session[:visit_count] ||= 0 # This initialize the visit count on first visit
 end

 def increment_visit_count
  session[:visit_count] += 1 # increment the count with each visit
  @visit_count = session[:visit_count]
 end





end

class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	products = Product.all
  	@products = Product.limit(3)
  end

  def about
  	@featured_product = Product.last
  end


end

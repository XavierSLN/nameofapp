class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	products = Product.all
  	if products.size > 5
  		@products = Product.limit(4)
  	else 
  		@products = Product.limit(3)
  	end
  end	


end

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

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

end

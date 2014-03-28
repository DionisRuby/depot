class StoreController < ApplicationController
  def session_count
  	if session[:counter].nil?
  		session[:counter] = 0
  	end
  	session[:counter] += 1
  end

  def index
  	@count = session_count
  	@products = Product.order(:title)
 	@show_count = "You've bean here #{@count} #{'time'.pluralize}" if @count >= 5
  end
end

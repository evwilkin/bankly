class DashboardController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
  	@categories = Category.all 
  	@line_item = LineItem.new
  end
end

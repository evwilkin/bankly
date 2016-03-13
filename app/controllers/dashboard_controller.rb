class DashboardController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
  	@categories = Category.all 
  	@line_item = LineItem.new
    @items = current_user.line_item
    @month = Time.now.strftime("%m")
    @month_select = params['monthSelect']
    @m = Time.now.strftime("%m")
    @d = Time.now.strftime("%d")
    @y = Time.now.strftime("%Y")
  end
end

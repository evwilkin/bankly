class DashboardController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
  	@categories = Category.all 
  	@line_item = LineItem.new
    @items = current_user.line_item
    @current_month = Time.now.strftime("%m")
    @current_year = Time.now.strftime("%Y")
    if (params['q'])
      @year = params['q'].split("-")[0]
      @month = params['q'].split("-")[1]
    else
      @year = @current_year
      @month = @current_month
    end
  end
end

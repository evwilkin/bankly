class MainController < ApplicationController
  
  def index
  	@user = User.find_by_id(session[:user_id])
  	if @user
  		redirect_to dashboard_path
  	end
  end


end

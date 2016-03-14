class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :categories, :line_item

  
   

  def is_authenticated?
  	unless current_user
     flash[:warning] = 'You need to login to access your profile'
     redirect_to login_path
   end
  end

  def current_user
  	@current_user ||= User.find_by_id(session[:user_id])
  end

  def categories 
    @categories = Category.all
  end

  def line_item 
    @line_item = LineItem.new
  end 
end


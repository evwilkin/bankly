class UsersController < ApplicationController
before_action :is_authenticated?, except: [:new, :create]


  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
    session[:user_id] = @user.id
  	flash[:success] = "You have successfully signed up!"
  	redirect_to dashboard_path
  end

  def show
    @user = @current_user
    @picture = @user.picture
  end

  def patch
    @user = @current_user
    uploaded_file = params[:picture].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
    @user.picture = cloudinary_file['public_id']
    redirect_to users_show_path
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :budget, :income)
  end
end
